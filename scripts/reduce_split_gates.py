#!/usr/bin/env python3
"""Calibre "LVS REDUCE SPLIT GATES" for SPICE netlists (Magic extraction, CDL / spice views).

Usage:
  reduce_split_gates.py <in.spice> <out.spice> [--models REGEX]

Parallel series stacks of MOS devices of the same model, with the same gate nets (and gate
lengths) in the same order between the same two end nets and on the same bulk, are merged
into one stack whose widths are the sums. The vendor standard cell layouts split wide stacks
into several legs while the CDL draws one, so without this the cell netlists only match after
the reduction Calibre (and the KLayout deck, svrf_lvs_runtime.rb sv_reduce_split_gates) does.

MOS devices are recognised as X or M elements with four nets (d g s b) followed by a model
name matching --models (default: the icsprout55 MOS models), with w= and l= parameters.
"""

import argparse
import re
import sys

MOS_RX = r'^[np](m|nat|mod|natod)[0-9]p[0-9].*_lp$'

SI = {'t': 1e12, 'g': 1e9, 'meg': 1e6, 'k': 1e3, 'm': 1e-3, 'u': 1e-6, 'n': 1e-9,
      'p': 1e-12, 'f': 1e-15, 'a': 1e-18}


def num(v):
    m = re.match(r'^([-+]?(?:\d+\.?\d*|\.\d+)(?:[eE][-+]?\d+)?)(meg|[tgkmunpfa])?', v, re.I)
    if not m:
        raise ValueError(v)
    x = float(m.group(1))
    if m.group(2):
        x *= SI[m.group(2).lower()]
    return x


def fmt(x):
    return '%.6gu' % (x * 1e6)


class Dev:
    def __init__(self, idx, tokens, model_pos):
        self.idx = idx
        self.tokens = tokens
        self.name = tokens[0]
        self.d, self.g, self.s, self.b = tokens[1:5]
        self.model = tokens[model_pos]
        self.params = {}
        for i, t in enumerate(tokens[model_pos + 1:], model_pos + 1):
            if '=' in t:
                k, v = t.split('=', 1)
                self.params[k.lower()] = (i, v)

    def get(self, k):
        return num(self.params[k][1])

    def set_w(self, w):
        i, _ = self.params['w']
        k = self.tokens[i].split('=', 1)[0]
        self.tokens[i] = '%s=%s' % (k, fmt(w))
        self.params['w'] = (i, fmt(w))


def join_lines(lines):
    out = []
    for line in lines:
        if line.startswith('+') and out:
            out[-1] = out[-1].rstrip('\n') + ' ' + line[1:].strip() + '\n'
        else:
            out.append(line)
    return out


def reduce_subckt(body, ports, mos_rx):
    """body: list of logical lines of one subckt (without .subckt/.ends). Returns new body
    and the number of merged stacks."""
    devs = {}
    for i, line in enumerate(body):
        t = line.split()
        if not t or t[0][0] in '*.':
            continue
        if t[0][0] in 'XxMm' and len(t) >= 6 and re.match(mos_rx, t[5]) and \
                all('=' not in x for x in t[1:6]):
            d = Dev(i, t, 5)
            if 'w' in d.params and 'l' in d.params:
                try:
                    d.get('w')
                    d.get('l')
                except ValueError:      # parametrised (w=nw): leave alone
                    continue
                devs[i] = d
    merged = 0
    removed = set()
    changed = True
    while changed:
        changed = False
        alive = [d for k, d in devs.items() if k not in removed]
        term = {}
        other = set()
        for d in alive:
            for n in (d.d, d.s):
                term.setdefault(n, []).append(d)
            for n in (d.g, d.b):
                other.add(n)
        # nets used by any non-MOS element or the subckt ports are not stack nodes
        for i, line in enumerate(body):
            if i in devs:
                continue
            t = line.split()
            if not t or t[0][0] in '*.':
                continue
            for x in t[1:]:
                if '=' in x:
                    break
                other.add(x)
        inner = {n for n, ds in term.items() if len(ds) == 2 and n not in other and n not in ports}
        if not inner:
            break
        chains = {}
        visited = set()
        for d0 in alive:
            if d0.idx in visited:
                continue
            ia, ib = d0.d in inner, d0.s in inner
            if ia == ib:
                continue
            start = d0.s if ia else d0.d
            cur = d0.d if ia else d0.s
            chain = [d0]
            prev = d0
            ok = True
            while cur in inner:
                nxt = [x for x in term[cur] if x is not prev]
                if len(nxt) != 1 or nxt[0].model != d0.model:
                    ok = False
                    break
                nxt = nxt[0]
                chain.append(nxt)
                prev = nxt
                cur = nxt.s if nxt.d == cur else nxt.d
                if len(chain) > 64:
                    ok = False
                    break
            if not ok:
                continue
            stop = cur
            for d in chain:
                visited.add(d.idx)
            if start == stop:
                continue
            gates = [(d.g, round(d.get('l') * 1e10)) for d in chain]
            if start > stop:
                start, stop = stop, start
                chain = chain[::-1]
                gates = gates[::-1]
            key = (d0.model, start, stop, d0.b, tuple(gates))
            chains.setdefault(key, []).append(chain)
        for key, lst in chains.items():
            if len(lst) < 2:
                continue
            keep = lst[0]
            for oth in lst[1:]:
                for i, d in enumerate(oth):
                    keep[i].set_w(keep[i].get('w') + d.get('w'))
                    removed.add(d.idx)
                merged += 1
            changed = True
    out = []
    for i, line in enumerate(body):
        if i in removed:
            continue
        if i in devs:
            out.append(' '.join(devs[i].tokens) + '\n')
        else:
            out.append(line)
    return out, merged


def reduce_text(lines, mos_rx=MOS_RX):
    lines = join_lines(lines)
    out = []
    total = 0
    i = 0
    while i < len(lines):
        line = lines[i]
        m = re.match(r'\s*\.subckt\s+(\S+)(.*)', line, re.I)
        if not m:
            out.append(line)
            i += 1
            continue
        ports = set(x for x in m.group(2).split() if '=' not in x)
        j = i + 1
        while j < len(lines) and not re.match(r'\s*\.ends', lines[j], re.I):
            j += 1
        body, n = reduce_subckt(lines[i + 1:j], ports, mos_rx)
        total += n
        out.append(line)
        out += body
        if j < len(lines):
            out.append(lines[j])
        i = j + 1
    return out, total


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('inp')
    ap.add_argument('out')
    ap.add_argument('--models', default=MOS_RX)
    a = ap.parse_args()
    lines = open(a.inp, encoding='latin-1').readlines()
    out, n = reduce_text(lines, a.models)
    with open(a.out, 'w') as f:
        f.writelines(out)
    print('reduce_split_gates: merged %d split stacks' % n, file=sys.stderr)


if __name__ == '__main__':
    main()

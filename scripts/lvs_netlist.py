#!/usr/bin/env python3
"""Make a netgen-ready reference netlist from an icsprout55 SPICE view.

Usage:
  lvs_netlist.py <in.spice> <out.spice> [--no-reduce]

The libs.ref/<lib>/spice views (hacking/cdl_to_spice.py) keep the CDL hierarchy, where the
vendor cells call parametrised helper subcircuits (".SUBCKT INV ... nw=200n pw=200n", called
as "XI0 ... INV nw=210n pw=270n"). Netgen does not pass instance parameters into a
subcircuit, so every such device would be compared with the default width. This script

  * inlines every call of a subcircuit that declares parameters, substituting the
    parameter values (devices and internal nets get the instance name as prefix);
  * applies the split gate reduction (reduce_split_gates.py) unless --no-reduce;
  * drops the parametrised helper definitions that are no longer called.
"""

import argparse
import os
import re
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import reduce_split_gates  # noqa: E402


def logical(lines):
    return reduce_split_gates.join_lines(lines)


def parse(lines):
    """Returns (order, subckts): subckts[name] = dict(ports, params, body, header)."""
    subs = {}
    order = []
    i = 0
    while i < len(lines):
        m = re.match(r'\s*\.subckt\s+(\S+)(.*)', lines[i], re.I)
        if not m:
            order.append(('line', lines[i]))
            i += 1
            continue
        name = m.group(1)
        toks = m.group(2).split()
        ports = [t for t in toks if '=' not in t]
        params = {}
        for t in toks:
            if '=' in t:
                k, v = t.split('=', 1)
                params[k.lower()] = v
        j = i + 1
        while j < len(lines) and not re.match(r'\s*\.ends', lines[j], re.I):
            j += 1
        subs[name.upper()] = dict(name=name, ports=ports, params=params, body=lines[i + 1:j],
                                  header=lines[i], ends=lines[j] if j < len(lines) else '.ENDS\n')
        order.append(('sub', name.upper()))
        i = j + 1
    return order, subs


def split_call(toks, subs):
    """X instance tokens -> (name, nets, subckt, params) or None."""
    nets = [t for t in toks[1:] if '=' not in t]
    if not nets:
        return None
    sub = nets[-1]
    if sub.upper() not in subs:
        return None
    params = {}
    for t in toks[1:]:
        if '=' in t:
            k, v = t.split('=', 1)
            params[k.lower()] = v
    return toks[0], nets[:-1], sub.upper(), params


def inline(body, subs, prefix='', netmap=None, values=None, depth=0):
    """Returns the body with parametrised subcircuit calls expanded."""
    out = []
    netmap = netmap or {}
    values = values or {}

    def mapnet(n):
        if n in netmap:
            return netmap[n]
        return prefix + n if prefix else n

    for line in body:
        toks = line.split()
        if not toks or toks[0][0] in '*.':
            if not prefix:
                out.append(line)
            continue
        # substitute parameter references in name=value tokens
        new = [toks[0] if not prefix else (toks[0][0] + prefix + toks[0])]
        call = split_call(toks, subs) if toks[0][0] in 'Xx' else None
        if call and subs[call[2]]['params'] and depth < 16:
            name, nets, sub, params = call
            sd = subs[sub]
            vals = dict(sd['params'])
            for k, v in params.items():
                vals[k] = values.get(v.lower(), v)
            nm = {p: mapnet(n) for p, n in zip(sd['ports'], nets)}
            out += inline(sd['body'], subs, prefix=(prefix + name + '/'), netmap=nm,
                          values=vals, depth=depth + 1)
            continue
        for t in toks[1:]:
            if '=' in t:
                k, v = t.split('=', 1)
                new.append('%s=%s' % (k, values.get(v.lower(), v)))
            else:
                new.append(t)
        # map the nets (all non-parameter tokens except the last one of an X call / model)
        if prefix:
            nnets = [i for i, t in enumerate(new) if i > 0 and '=' not in t]
            if new[0][0] in 'Xx':
                term = nnets[:-1]           # last is the subcircuit / model name
            elif new[0][0] in 'Mm':
                term = nnets[:4]
            elif new[0][0] in 'DdRrCc':
                term = nnets[:2]
            elif new[0][0] in 'Qq':
                term = nnets[:3]
            else:
                term = []
            for i in term:
                new[i] = mapnet(new[i])
        out.append(' '.join(new) + '\n')
    return out


def device_stubs(subs):
    """Empty subcircuits that other subcircuits call: device model stubs of the CDL
    (".SUBCKT re_ppo_sab_2t POS NEG / .ENDS"). Empty cells nobody calls (fillers) stay."""
    called = set()
    for sd in subs.values():
        for line in sd['body']:
            t = line.split()
            if t and t[0][0] in 'Xx':
                c = split_call(t, subs)
                if c:
                    called.add(c[2])
    stubs = set()
    for k, sd in subs.items():
        if k not in called:
            continue
        if all(not l.strip() or l.strip()[0] in '*.' for l in sd['body']):
            stubs.add(k)
    return stubs


def make(lines, reduce=True):
    lines = logical(lines)
    order, subs = parse(lines)
    used_param_subs = set(k for k, v in subs.items() if v['params'])
    # Device stubs are dropped: netgen then treats the calls as black-box devices with the
    # same numbered pins on both sides (the Magic extraction does not define them either),
    # so permute / series / parallel rules of the netgen setup apply to them.
    stubs = device_stubs(subs)
    out = []
    for kind, x in order:
        if kind == 'line':
            out.append(x)
            continue
        sd = subs[x]
        if sd['params'] or x in stubs:
            continue
        out.append(sd['header'])
        out += inline(sd['body'], subs)
        out.append(sd['ends'])
    n = 0
    if reduce:
        out, n = reduce_split_gates.reduce_text(out)
    return out, n, len(used_param_subs)


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('inp')
    ap.add_argument('out')
    ap.add_argument('--no-reduce', action='store_true')
    a = ap.parse_args()
    lines = open(a.inp, encoding='latin-1').readlines()
    out, n, k = make(lines, not a.no_reduce)
    with open(a.out, 'w') as f:
        f.write('* LVS reference netlist made by hacking/magic/lvs_netlist.py from %s\n'
                % os.path.basename(a.inp))
        f.writelines(out)
    print('lvs_netlist: inlined %d parametrised helper subcircuits, merged %d split stacks'
          % (k, n), file=sys.stderr)


if __name__ == '__main__':
    main()

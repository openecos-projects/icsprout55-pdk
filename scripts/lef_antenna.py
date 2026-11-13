#!/usr/bin/env python3
"""Per-pin antenna data of a cell library from Magic's LEF writer, merged into a cell LEF.

  lef_antenna.py extract <lib.gds> <out.pins> [--cells A,B] [--tech ics55.tech]
      Magic (lef write) on every cell of the GDS; writes one line per pin:
      "<cell> <pin> <gate area um2> <diffusion area um2>". Needs magic and the klayout
      Python module (the GDS is first converted with magic_gds.py).
  lef_antenna.py merge <cells.lef> <in.pins> <out.lef>
      Copies the LEF and adds ANTENNAMODEL OXIDE1 / ANTENNAGATEAREA / ANTENNADIFFAREA to the
      signal pins (USE POWER / GROUND pins are left alone, as in the vendor 9-track LEF).
      Existing ANTENNAGATEAREA / ANTENNADIFFAREA lines of a pin are replaced.
  lef_antenna.py compare <cells.lef> <in.pins>
      Compares the table with the antenna data already in a LEF (vendor 9-track check).

Magic computes the gate area from the extracted devices (poly over diffusion of the device
types of ics55.tech) and the diffusion area from the "tiedown" types (all non-gate diffusion),
for each pin net, i.e. what OpenROAD's antenna checker needs.
"""

import argparse
import os
import re
import subprocess
import sys
import tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
TECH = os.path.join(ROOT, 'icsprout55', 'libs.tech', 'magic', 'ics55.tech')


def lef_pins(text):
    """{(macro, pin): {'gate': x, 'diff': y, 'use': u}} from LEF text."""
    out = {}
    macro = pin = None
    for line in text.split('\n'):
        t = line.split()
        if not t:
            continue
        if t[0] == 'MACRO':
            macro = t[1]
        elif t[0] == 'PIN' and macro:
            pin = t[1]
            out[(macro, pin)] = {'gate': 0.0, 'diff': 0.0, 'use': 'SIGNAL'}
        elif t[0] == 'END' and len(t) > 1 and pin and t[1] == pin:
            pin = None
        elif pin and t[0] == 'USE':
            out[(macro, pin)]['use'] = t[1].rstrip(';')
        elif pin and t[0] == 'ANTENNAGATEAREA':
            out[(macro, pin)]['gate'] += float(t[1])
        elif pin and t[0] == 'ANTENNADIFFAREA':
            out[(macro, pin)]['diff'] += float(t[1])
    return out


def extract(gds, out, cells=None, tech=TECH):
    work = tempfile.mkdtemp(prefix='lefant_')
    mgds = os.path.join(work, 'magic.gds')
    subprocess.run([sys.executable, os.path.join(HERE, 'magic_gds.py'), gds, mgds], check=True)
    if cells is None:
        import klayout.db as db
        ly = db.Layout()
        ly.read(gds)
        cells = sorted(c.name for c in ly.each_cell())
    tcl = os.path.join(work, 'lef.tcl')
    with open(tcl, 'w') as f:
        f.write('tech load %s\ngds read %s\n' % (tech, mgds))
        f.write('set cells {%s}\n' % ' '.join(cells))
        f.write('foreach c $cells {\n  if {[catch {load $c}]} continue\n')
        f.write('  lef write %s/$c.lef\n}\nquit -noprompt\n' % work)
    with open(os.path.join(work, 'magic.log'), 'w') as lf:
        subprocess.run(['magic', '-dnull', '-noconsole', '-norcfile', tcl], stdout=lf,
                       stderr=subprocess.STDOUT, cwd=work)
    n = 0
    with open(out, 'w') as f:
        f.write('# cell pin gate_area_um2 diff_area_um2 (Magic lef write, hacking/magic/lef_antenna.py)\n')
        for c in cells:
            p = os.path.join(work, c + '.lef')
            if not os.path.exists(p):
                continue
            for (m, pin), v in sorted(lef_pins(open(p).read()).items()):
                if v['use'] in ('POWER', 'GROUND'):
                    continue
                f.write('%s %s %.6g %.6g\n' % (m, pin, v['gate'], v['diff']))
                n += 1
    print('lef_antenna: %d pins of %d cells -> %s' % (n, len(cells), out), file=sys.stderr)


def read_table(path):
    t = {}
    for line in open(path):
        if line.startswith('#') or not line.strip():
            continue
        c, p, g, d = line.split()
        t[(c, p)] = (float(g), float(d))
    return t


def merge(lef, table, out):
    tab = read_table(table)
    lines = open(lef).read().split('\n')
    res = []
    macro = pin = None
    pending = None
    added = 0
    for line in lines:
        t = line.split()
        if t and t[0] == 'MACRO':
            macro = t[1]
        if t and t[0] == 'PIN' and macro:
            pin = t[1]
            pending = tab.get((macro, pin))
            use = None
            res.append(line)
            continue
        if pin and t and t[0] == 'USE' and t[1].rstrip(';') in ('POWER', 'GROUND'):
            pending = None                # supply pins carry no antenna data
        if pin and t and t[0] in ('ANTENNAGATEAREA', 'ANTENNADIFFAREA', 'ANTENNAMODEL') and pending:
            continue                      # replaced below
        if pin and pending and t and t[0] == 'PORT':
            g, d = pending
            ind = re.match(r'\s*', line).group(0)
            if g > 0:
                res.append('%sANTENNAMODEL OXIDE1 ;' % ind)
                res.append('%sANTENNAGATEAREA %.6g ;' % (ind, g))
            if d > 0:
                res.append('%sANTENNADIFFAREA %.6g ;' % (ind, d))
            added += 1
            pending = None
        if t and t[0] == 'END' and len(t) > 1 and t[1] == pin:
            pin = None
            pending = None
        res.append(line)
    with open(out, 'w') as f:
        f.write('\n'.join(res))
    print('lef_antenna: antenna data on %d pins -> %s' % (added, out), file=sys.stderr)


def compare(lef, table):
    ref = lef_pins(open(lef).read())
    tab = read_table(table)
    worst = 0.0
    bad = 0
    for k, (g, d) in sorted(tab.items()):
        if k in ref and ref[k]['use'] in ('POWER', 'GROUND'):
            continue
        if k not in ref:
            print('not in LEF: %s %s' % k)
            bad += 1
            continue
        r = ref[k]
        for what, a, b in (('gate', g, r['gate']), ('diff', d, r['diff'])):
            dev = abs(a - b) / max(b, 1e-9) if b else (0.0 if a == 0 else 1.0)
            worst = max(worst, dev)
            if dev > 0.01:
                bad += 1
                print('%s %s %s: magic %.4g lef %.4g' % (k[0], k[1], what, a, b))
    missing = [k for k, v in ref.items() if k not in tab and v['use'] not in ('POWER', 'GROUND')
               and (v['gate'] or v['diff'])]
    print('%d pins compared, %d differ by more than 1 %%, %d LEF pins with data missing in the table'
          % (len(tab), bad, len(missing)))


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest='cmd', required=True)
    e = sub.add_parser('extract')
    e.add_argument('gds')
    e.add_argument('out')
    e.add_argument('--cells')
    e.add_argument('--tech', default=TECH)
    m = sub.add_parser('merge')
    m.add_argument('lef')
    m.add_argument('table')
    m.add_argument('out')
    c = sub.add_parser('compare')
    c.add_argument('lef')
    c.add_argument('table')
    a = ap.parse_args()
    if a.cmd == 'extract':
        extract(a.gds, a.out, a.cells.split(',') if a.cells else None, a.tech)
    elif a.cmd == 'merge':
        merge(a.lef, a.table, a.out)
    else:
        compare(a.lef, a.table)


if __name__ == '__main__':
    main()

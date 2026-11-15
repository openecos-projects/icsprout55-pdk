#!/usr/bin/env python3
"""Add default_max_capacitance / default_max_transition to a liberty that has none.
Usage: liberty_limits.py <in.lib> <out.lib>

The stdcell_gen liberty files (lctime) carry no max_capacitance / max_transition, and
OpenROAD CTS then refuses every buffer ("CTS-0002 candidate buffers lack max capacitance
information"). The limits written are the characterized range: the largest output load and
input slew of the delay / transition tables, so STA reports a violation instead of
extrapolating beyond the tables.
"""
import re
import sys

TABLE = re.compile(r"(?:cell_rise|cell_fall|rise_transition|fall_transition)\s*\(\w+\)\s*\{\s*"
                   r"index_1\s*\(\s*\\?\s*\"([^\"]+)\"\s*\\?\s*\);\s*index_2\s*\(\s*\\?\s*\"([^\"]+)\"")


def main():
    src, dst = sys.argv[1:3]
    t = open(src).read()
    if 'default_max_capacitance' in t or 'default_max_transition' in t:
        sys.exit(f'liberty_limits: {src} already has limits')
    # the templates of these files are (total_output_net_capacitance, input_net_transition)
    cap = slew = 0.0
    for m in TABLE.finditer(t):
        cap = max(cap, max(float(x) for x in m.group(1).split(',')))
        slew = max(slew, max(float(x) for x in m.group(2).split(',')))
    if not cap or not slew:
        sys.exit(f'liberty_limits: no delay tables found in {src}')
    t, n = re.subn(r"(\n(\s*)delay_model\s*:\s*table_lookup\s*;)",
                   lambda m: f"{m.group(1)}\n{m.group(2)}default_max_capacitance : {cap:g};"
                             f"\n{m.group(2)}default_max_transition : {slew:g};", t, count=1)
    if n != 1:
        sys.exit(f'liberty_limits: no delay_model in {src}')
    # OpenROAD CTS only looks at the pin attribute, not the library default
    t, npin = re.subn(r"(\n(\s*)direction\s*:\s*output\s*;)",
                      lambda m: f"{m.group(1)}\n{m.group(2)}max_capacitance : {cap:g};", t)
    open(dst, 'w').write(t)
    print(f'liberty_limits: {dst}: max capacitance {cap:g} (library and {npin} output pins), '
          f'max transition {slew:g}', file=sys.stderr)


if __name__ == '__main__':
    main()

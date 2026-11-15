#!/usr/bin/env python3
"""Cell Verilog models in a form LibreLane's lint preprocessing keeps intact.
Usage: verilog_models.py <in.v> <out.v>

LibreLane (common/toolbox.py create_blackbox_model) drops every line matching
    ^\\s+(\\w+|\\\\\\S+?)\\s*\\(.*\\).*;
to strip primitive / module instances before yosys makes the blackboxes. A one-line
"if (~cdn) IQ <= 1'b0;" matches too, and the "else" that follows is then a syntax error
(Verilator lint fails for every design). Here the statement after "if (...)" goes on its own
line; nothing else changes.
"""
import re
import sys

IF = re.compile(r"^(\s*)if\s*\(")


def split_if(line):
    m = IF.match(line)
    if not m:
        return [line]
    i, depth = m.end() - 1, 0
    for j in range(i, len(line)):
        if line[j] == '(':
            depth += 1
        elif line[j] == ')':
            depth -= 1
            if depth == 0:
                rest = line[j + 1:].strip()
                if not rest or not rest.endswith(';') or rest.startswith('begin'):
                    return [line]
                ind = m.group(1)
                return [line[:j + 1].rstrip() + '\n', ind + '  ' + rest + '\n']
    return [line]


def main():
    src, dst = sys.argv[1:3]
    out, n = [], 0
    for line in open(src):
        parts = split_if(line)
        n += len(parts) > 1
        out += parts
    open(dst, 'w').writelines(out)
    print(f'verilog_models: {n} one-line if statements split -> {dst}', file=sys.stderr)


if __name__ == '__main__':
    main()

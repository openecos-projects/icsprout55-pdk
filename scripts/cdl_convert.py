#!/usr/bin/env python3
"""Convert an ICsprout55 vendor CDL netlist (standard cells or IO) into the CDL installed in the PDK.

Usage: cdl_convert.py <input.cdl> <output.cdl> [--prefix PREFIX] [--lef LEF]

The vendor CDLs cannot be read by KLayout (LVS) as delivered, and the standard
cell and IO CDLs cannot be concatenated (LibreLane does this for LVS). Changes
applied (the vendor CDL itself is never modified):
  - "+" continuation lines are joined.
  - The CDL "/" separator on X lines and "$X=.. $Y=.. $D=.." annotations are removed.
  - Repeated, identical .SUBCKT definitions (helper cells such as INV, TG) are
    kept only once.
  - Parameters used inside a subcircuit but not declared (nw, pw, nl, pl of the
    helper cells) get a default on the .SUBCKT line.
  - Private helper subcircuits (instantiated by other subcircuits of the same
    file and containing devices, e.g. INV/NAND2 in the standard cells or
    nand2/MUX_PAD in the IO) are renamed with a prefix, by default the file name
    ("ics55_LLSC_H7CR_INV"). KLayout is case-insensitive, so the standard cell
    NAND2 and the IO nand2 would otherwise clash. Empty subcircuits used as
    device models (re_ppo_sab_2t, mom_2t, ...) are kept as they are.

  - With --lef, every LEF macro without a subcircuit (physical-only cells
    such as the IO corner and spacer cells) gets an empty .SUBCKT with the LEF
    pins, as OpenROAD write_cdl (LibreLane OpenROAD.WriteCDL) needs one for
    every master.

MOS (M) and diode (D) lines are kept as devices, so this is still a CDL; use
cdl_to_spice.py for an ngspice netlist.
"""
import os
import re
import sys

NUM_RE = re.compile(r"^[-+]?(\d+\.?\d*|\.\d+)([eE][-+]?\d+)?[a-zA-Z]*$")
DEFAULT_W = "200n"
DEFAULT_L = "60n"


def join_continuations(lines):
    """Joins '+' continuation lines onto the previous line."""
    out = []
    for line in lines:
        if line.startswith("+") and out:
            out[-1] += " " + line[1:].strip()
        else:
            out.append(line.rstrip("\n"))
    return out


def clean_device(line):
    return " ".join(t for t in line.split() if not t.startswith("$") and t != "/")


def undeclared_params(header, body):
    """Returns {name: default} for identifiers used as parameter values in body."""
    declared = {t.split("=")[0].lower() for t in header.split()[2:] if "=" in t}
    params = {}
    for line in body:
        if line.startswith("*"):
            continue
        for key, val in re.findall(r"(\w+)\s*=\s*([^\s=]+)", line):
            if NUM_RE.match(val) or val.lower() in declared or val.lower() in params:
                continue
            if not re.match(r"^[A-Za-z_]\w*$", val):
                continue
            params[val.lower()] = DEFAULT_L if key.lower() == "l" else DEFAULT_W
    return params


def x_callee(line):
    """Subcircuit name of an X line: the last token that is not a parameter."""
    toks = [t for t in line.split() if "=" not in t]
    return toks[-1] if len(toks) > 1 else None


def split_subckts(lines):
    """Returns a list of items: ('line', text) or ('subckt', header, body, ends)."""
    items = []
    i = 0
    while i < len(lines):
        line = lines[i]
        if not line.upper().startswith(".SUBCKT"):
            items.append(("line", line))
            i += 1
            continue
        j = i
        while j < len(lines) and not lines[j].upper().startswith(".ENDS"):
            j += 1
        items.append(("subckt", line, lines[i + 1:j], lines[j] if j < len(lines) else ".ENDS"))
        i = j + 1
    return items


def is_device(line):
    return bool(line) and line[0] in "MmDdRrCcQq"


def convert(text, prefix):
    items = split_subckts(join_continuations(text.splitlines()))

    # Helper subcircuits: called from other subcircuits and containing devices
    bodies = {}
    spelling = {}
    called = set()
    for it in items:
        if it[0] != "subckt":
            continue
        name = it[1].split()[1]
        bodies.setdefault(name.upper(), it[2])
        spelling.setdefault(name.upper(), name)
        for b in it[2]:
            if b[:1] in "Xx":
                callee = x_callee(clean_device(b))
                if callee:
                    called.add(callee.upper())
    helpers = {n for n in called if n in bodies and any(is_device(b) or b[:1] in "Xx" for b in bodies[n])}
    # Already prefixed (converting a converted file) -> keep
    rename = {n: f"{prefix}{spelling[n]}" for n in helpers if not n.startswith(prefix.upper())}

    def renamed(name):
        return rename.get(name.upper(), name)

    out = []
    seen = {}
    for it in items:
        if it[0] == "line":
            out.append(it[1])
            continue
        _, header, body, ends = it
        name = header.split()[1]
        key = "\n".join(re.sub(r"\s+", " ", l).strip() for l in [header] + body)
        if name.upper() in seen:
            if seen[name.upper()] != key:
                sys.exit(f"Subcircuit {name} defined twice with different bodies")
            # Drop the duplicate along with the comment banner just before it
            while out and (out[-1].startswith("*") or not out[-1].strip()):
                out.pop()
            continue
        seen[name.upper()] = key

        toks = header.split()
        toks[1] = renamed(toks[1])
        header = " ".join(toks)
        params = undeclared_params(header, body)
        if params:
            header += " " + " ".join(f"{k}={v}" for k, v in params.items())
        out.append(header)
        for b in body:
            if b.startswith("*") or not b.strip():
                out.append(b)
                continue
            b = clean_device(b)
            if b[:1] in "Xx":
                toks = b.split()
                callee = x_callee(b)
                k = max(i for i, t in enumerate(toks) if t == callee)
                toks[k] = renamed(callee)
                b = " ".join(toks)
            out.append(b)
        out.append(ends)
    return "\n".join(out) + "\n", sorted(rename.values())


def lef_macros(path):
    """Returns [(macro, [pins])] in file order."""
    macros = []
    with open(path, encoding="latin-1") as f:
        for line in f:
            toks = line.split()
            if len(toks) >= 2 and toks[0] == "MACRO":
                macros.append((toks[1], []))
            elif len(toks) >= 2 and toks[0] == "PIN" and macros:
                macros[-1][1].append(toks[1])
    return macros


def physical_only_subckts(text, lef):
    """Empty .SUBCKTs for the LEF macros that have no subcircuit in text."""
    defined = {l.split()[1].upper() for l in text.splitlines() if l.upper().startswith(".SUBCKT")}
    out = []
    for macro, pins in lef_macros(lef):
        if macro.upper() not in defined:
            out.append(f"\n* Physical-only cell from {os.path.basename(lef)}\n"
                       f".SUBCKT {' '.join([macro] + pins)}\n.ENDS\n")
    return "".join(out)


def take_option(args, name):
    if name not in args:
        return None
    k = args.index(name)
    value = args[k + 1]
    del args[k:k + 2]
    return value


def main():
    args = sys.argv[1:]
    prefix = take_option(args, "--prefix")
    lef = take_option(args, "--lef")
    if len(args) != 2:
        sys.exit(__doc__)
    src, dst = args
    if prefix is None:
        prefix = os.path.splitext(os.path.basename(src))[0] + "_"
    with open(src, encoding="latin-1") as f:
        # Drop the header of a previous conversion
        text = "".join(l for l in f if not l.startswith(("* Generated by scripts/cdl_convert.py",
                                                         "* LVS-ready copy of the vendor CDL")))
    converted, helpers = convert(text, prefix)
    if lef:
        converted += physical_only_subckts(converted, lef)
    header = (f"* Generated by scripts/cdl_convert.py from {os.path.basename(src)}\n"
              "* LVS-ready copy of the vendor CDL; edit the generator, not this file.\n")
    with open(dst, "w") as f:
        f.write(header + converted)
    print(f"{dst}: renamed helpers {', '.join(helpers) if helpers else '(none)'}")


if __name__ == "__main__":
    main()

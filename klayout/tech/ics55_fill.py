# ICS55 dummy fill (AA, PO, MET1-MET5, T4M2) for KLayout.
#
#   klayout -b -r ics55_fill.py -rd input=in.gds -rd output=out.gds [-rd topcell=TOP]
#           [-rd layers=AA,PO,M1,...] [-rd exclude_cells=REGEX] [-rd density=1.0]
#
# This is LibreLane's KLAYOUT_FILLER_SCRIPT (KLayout.Filler passes input / output).
#
# The dummy shapes, spacings and keep-outs are the AADUM_* / PODUM_* / MnDUM_* /
# T4M2DUM_* rules of the Calibre deck (pv/DRC/ICsprout_CalDRC_55LLULP1233_REV1_0_OS.drc)
# and the "Dummy rules" chapter (3.3.43) of the design rule manual:
#   - only three fixed shapes per layer, each with its own spacing to dummies and to
#     drawn shapes (e.g. METndm 2x2 / 0.8 / 10, 1x1 / 0.3 / 3, 0.22x0.89 / 0.25 / 0.3),
#   - keep-outs: dummy block (L;3), DMYBLK, INDALL, LOGO, FUSEALL, NW1 edge, NW1res, CT,
#     the chip edge (inside CHIPBLK, the PR boundary on 351;12),
#   - METndm-R.1..3: the dummies of adjacent metal layers are shifted against each other.
# Not covered: BMIM / 45 degree metal keep-outs (no MIM, no 45 degree routing in the flow).
#
# Every class is placed on one fixed grid (step = size + dummy spacing), which gives the
# dummy-to-dummy spacing by construction; the smaller classes then fill what is left. The
# DRM wants the fill uniform over the whole chip, not only where a window fails, so all
# free area is filled. Dummy PO keeps `dummy_cross` (0.3) to dummy AA: no rule relates
# the two (AADUM_S_5 / PODUM_S_4 only see drawn PO / AA), they are just not overlapped.
#
# Standard cell rows: LibreLane puts filler cells on every free site and dummies cannot
# enter the rows (NW edge, AA / PO distances), so AA / PO density there has to come from
# the density filler cells of the library (FILL_CELLS). IO cells (exclude_cells) only get
# T4M2 fill (exclude_layers): filling the pads pushes M2-M5 over the D_1_max limit.
#
# Fill cells are named <top>_FILL_<layer>_<class>, so a filled macro keeps its own fill
# cells when it is placed in a chip that is filled again.

import re
import pya

opt = {
    "input": globals().get("input"),
    "output": globals().get("output"),
    "topcell": globals().get("topcell"),
    "layers": globals().get("layers", "AA,PO,M1,M2,M3,M4,M5,T4M2"),
    "exclude_cells": globals().get("exclude_cells", r"^P65_1233_"),
    # layers kept out of the excluded cells; the pads have no top metal in their core
    # area, so T4M2 is filled there too (else T4M2_D_1_min fails on the pad ring)
    "exclude_layers": globals().get("exclude_layers", "AA,PO,M1,M2,M3,M4,M5"),
    "density": float(globals().get("density", "1.0")),
    # dummy AA <-> dummy PO clearance: no rule (AADUM_S_5 / PODUM_S_4 only see drawn PO / AA)
    "dummy_cross": float(globals().get("dummy_cross", "0.3")),
}
if not opt["input"] or not opt["output"]:
    raise RuntimeError("ics55_fill.py: -rd input=... -rd output=... are required")

# GDS layer numbers (DRM layer table / Calibre LAYER MAP)
NW1, NW1RES = (9, 1), (9, 4)
CT = (72, 1)
FUSEALL, EFUSEALL = (292, 12), (293, 12)
INDALL, LOGO = (302, 12), (355, 12)
CHIPBLK, DMYBLK, METBLK = (351, 12), (359, 12), (361, 12)

# class: (w, h, dummy spacing, spacing to the drawn layer)
MET_CLASSES = [(2.0, 2.0, 0.8, 10.0), (1.0, 1.0, 0.3, 3.0), (0.22, 0.89, 0.25, 0.3)]
T4M_CLASSES = [(2.0, 2.0, 0.8, 10.0), (1.0, 1.0, 0.4, 0.6), (0.6, 1.2, 0.4, 0.6)]
# METndm-R.1..3 offsets between adjacent layers (per class, um)
MET_SHIFT = [0.2, 0.075, 0.07]

LAYERS = {
    # name: gds layer, classes, chip edge margin, keep-outs [(layer, distance)], extra
    "AA": dict(gds=2, classes=[(3.0, 3.0, 2.0, 1.6), (1.0, 1.0, 0.6, 1.6), (0.467, 0.467, 0.28, 1.6)],
               edge=0.6, block=2.0, dmyblk=2.0,
               keep=[((41, 1), 1.6), (FUSEALL, 2.0), (EFUSEALL, 2.0), (NW1RES, 0.6), (LOGO, 0.1),
                     (INDALL, 2.0), (CT, 0.0)],
               nw_edge=0.3),
    "PO": dict(gds=41, classes=[(2.4, 2.4, 2.6, 0.8), (0.92, 0.92, 0.68, 0.8), (0.381, 0.381, 0.36, 0.8)],
               edge=0.6, block=2.0, dmyblk=2.0,
               keep=[((2, 1), 0.8), ((2, 2), opt["dummy_cross"]), (NW1RES, 0.6), (LOGO, 0.1), (INDALL, 2.0), (CT, 0.0)],
               nw_edge=0.3),
}
for i, n in enumerate(["M1", "M2", "M3", "M4", "M5"]):
    LAYERS[n] = dict(gds=81 + i, classes=MET_CLASSES, edge=2.5, block=2.0, dmyblk=2.0,
                     keep=[(FUSEALL, 3.0), (LOGO, 0.1), (INDALL, 3.0), (METBLK, 0.0)],
                     wide=True, shift=[s * i for s in MET_SHIFT])
LAYERS["T4M2"] = dict(gds=103, classes=T4M_CLASSES, edge=2.5, block=2.0, dmyblk=2.0,
                      keep=[(FUSEALL, 3.0), (LOGO, 0.1), (INDALL, 3.0), (METBLK, 0.0)], wide=True,
                      shift=[0.6, 0.6, 0.6])

ly = pya.Layout()
ly.read(opt["input"])
top = ly.cell(opt["topcell"]) if opt["topcell"] else ly.top_cell()
dbu = ly.dbu


def um(x):
    return int(round(x / dbu))


def region(ln_dt, cell=top):
    li = ly.find_layer(*ln_dt)
    if li is None:
        return pya.Region()
    r = pya.Region(cell.begin_shapes_rec(li))
    r.merge()
    return r


# Chip boundary: CHIPBLK (PR boundary) of the top cell, else its bounding box
chip = pya.Region()
li = ly.find_layer(*CHIPBLK)
if li is not None:
    chip = pya.Region(top.shapes(li))
if chip.is_empty():
    chip = pya.Region(top.bbox())
chip.merge()

# Areas of excluded cells (IO pads and pad ring by default): no fill inside them
excl = pya.Region()
if opt["exclude_cells"]:
    rx = re.compile(opt["exclude_cells"])

    def _walk(cell, t, depth):
        for inst in cell.each_inst():
            c = inst.cell
            if rx.search(c.name):
                excl.insert(inst.bbox().transformed(t))  # whole array if it is one
            elif depth < 3 and c.child_instances() > 0 and not inst.is_regular_array():
                _walk(c, t * inst.cplx_trans, depth + 1)

    _walk(top, pya.ICplxTrans(), 0)
    excl.merge()

nw = region(NW1)
nw_edges = nw.edges()
dmyblk = region(DMYBLK)
report = []


def wide_metal(r):
    # shapes with a width >= 1.5 (METndm-S.7: 0.6 from dummies)
    return r.sized(-um(0.75)).sized(um(0.75)) & r


for name in [x.strip() for x in opt["layers"].split(",") if x.strip()]:
    L = LAYERS[name]
    g = L["gds"]
    drawn = region((g, 1)) + region((g, 8))  # drawing + slot (slots belong to the metal)
    drawn.merge()
    placed = region((g, 2))  # existing dummies (filled macros, IP)
    base = chip.sized(-um(L["edge"]))
    if name in [x.strip() for x in opt["exclude_layers"].split(",")]:
        base -= excl.sized(um(3.0))
    base -= region((g, 3)).sized(um(L["block"]))
    base -= dmyblk.sized(um(L["dmyblk"]))
    for k, d in L["keep"]:
        base -= region(k).sized(um(d)) if d > 0 else region(k)
    if L.get("nw_edge"):
        base -= nw_edges.extended(um(L["nw_edge"]), um(L["nw_edge"]), um(L["nw_edge"]),
                                  um(L["nw_edge"]), True)  # 0.3 from the NW1 boundary, both sides
    wide = wide_metal(drawn) if L.get("wide") else pya.Region()
    out_li = ly.layer(g, 2)
    cls_sp = [c[2] for c in L["classes"]]
    n_total = 0
    for ci, (w, h, sp, sd) in enumerate(L["classes"]):
        cw, chh = um(w), um(h)
        is_wide = min(w, h) >= 1.5
        allowed = base - drawn.sized(um(sd))
        if wide and not is_wide:
            allowed -= wide.sized(um(0.6))
        # to dummies already placed: the larger of the two spacings, 0.6 to wide dummies
        sp_prev = max([sp] + cls_sp[:ci] + ([0.6] if ci > 0 and L.get("wide") else []))
        allowed -= placed.sized(um(sp_prev))
        allowed.merge()
        if allowed.is_empty():
            continue
        cname = "%s_FILL_%s_%s" % (top.name, name, ("%gx%g" % (w, h)).replace(".", "p"))
        fc = ly.cell(cname) or ly.create_cell(cname)
        fc.clear()
        fc.shapes(out_li).insert(pya.Box(0, 0, cw, chh))
        shift = um(L.get("shift", [0, 0, 0])[ci])
        step_x = um((w + sp) / opt["density"]) if opt["density"] < 1 else cw + um(sp)
        step_y = um((h + sp) / opt["density"]) if opt["density"] < 1 else chh + um(sp)
        top.fill_region(allowed, fc.cell_index(), pya.Box(0, 0, cw, chh),
                        pya.Vector(step_x, 0), pya.Vector(0, step_y),
                        pya.Point(shift, shift), None, pya.Vector(0, 0), None, pya.Box())
        n = sum(i.size() for i in top.each_inst() if i.cell_index == fc.cell_index())
        n_total += n
        placed = region((g, 2))
        report.append("%-5s %-10s %8d" % (name, "%gx%g" % (w, h), n))
    report.append("%-5s %-10s %8d" % (name, "total", n_total))

print("\n".join(report))
ly.write(opt["output"])

#!/usr/bin/env python3
"""ICS55 seal ring (LibreLane KLAYOUT_SEALRING_SCRIPT).

  python3 ics55_sealring.py --input in.gds --output out.gds --die-width W --die-height H
  python3 ics55_sealring.py --output ring.gds --die-width W --die-height H     (ring only)

The ring is placed on the die (0, 0) - (W, H): its outer edge is the die edge (the "window
edge" of the rules), so the seal ring is the outermost structure of the GDS and the chip
content has to keep 10 um (ring) + 10 um (assembly isolation, SR.2) from the die edge.

Structure from the design rule manual 3.3.46 (SR.*) and the Calibre SRCK_* checks
(distances d from the die edge, um):
  outer metal ring  d 2 - 4   (SR.3 / SR.5), MET1-MET5 and T4M2
  inner metal ring  d 6 - 10  (SR.4 / SR.6)
  RDL               d 4.5 - 10 (SR.7 / SR.8),  RV bar d 6.5 - 9.5 (SR.9 / SR.10)
  P+ AA (+ PP) under both rings for the contacts, SRINGBLK over d 0 - 10
  via bars (0.09, T4V2 0.36) along both edges of the inner ring and the window side of the
  outer ring, metal enclosure 0.375 (CT, V1, V3) / 0.5 (V2, V4) / 0.44 (T4V2) (SR.14);
  square vias (0.09, T4V2 0.36) between them: >= 0.74 / 0.6 (T4V2) from the bars (SR.16),
  0.405 / 0.24 (T4V2) enclosure in the outer ring (SR.15), columns 0.21 / 0.48 apart
  (SR.17), 0.6 along the ring (SR.18), adjacent columns and V(n) / V(n+1) shifted by half a
  pitch (0.255 gap, SR.19 / SR.22)
  45 degree corners (SR.23): the bend starts --corner um (default 50) from the die corner;
  metals, AA / PP, RDL, RV and SRINGBLK bend, the via bars and squares stay on the straight
  sides (a 45 degree bar cannot be exactly 0.09 wide on the grid: CT_W_2 / T4V2_W_2).
"""
import argparse
import math

try:
    import klayout.db as db
except ImportError:
    import pya as db

L = {  # GDS layer, datatype
    "AA": (2, 1), "PP": (53, 1), "CT": (72, 1), "CTbar": (72, 7),
    "M1": (81, 1), "M2": (82, 1), "M3": (83, 1), "M4": (84, 1), "M5": (85, 1), "T4M2": (103, 1),
    "V1": (91, 1), "V2": (92, 1), "V3": (93, 1), "V4": (94, 1), "T4V2": (113, 1),
    "V1bar": (91, 7), "V2bar": (92, 7), "V3bar": (93, 7), "V4bar": (94, 7), "T4V2bar": (113, 7),
    "RV": (120, 1), "RDL": (123, 1),
    # the Calibre deck reads SRINGBLK from 354;13 (LAYER MAP 354 DATATYPE 13), the DRM layer
    # table says 354;12: both are drawn
    "SRINGBLK": (354, 13), "SRINGBLK_DRM": (354, 12),
}
GRID = 0.005
OUTER, INNER = (2.0, 4.0), (6.0, 10.0)
# cut: (square layer, bar layer, size, bar enclosure, square / bar space, column space,
#       space along the ring, square enclosure in the outer ring, phase group)
CUTS = [
    ("CT", "CTbar", 0.09, 0.375, 0.74, 0.21, 0.6, 0.405, 0),
    ("V1", "V1bar", 0.09, 0.375, 0.74, 0.21, 0.6, 0.405, 1),
    ("V2", "V2bar", 0.09, 0.5, 0.74, 0.21, 0.6, 0.405, 0),
    ("V3", "V3bar", 0.09, 0.375, 0.74, 0.21, 0.6, 0.405, 1),
    ("V4", "V4bar", 0.09, 0.5, 0.74, 0.21, 0.6, 0.405, 0),
    ("T4V2", "T4V2bar", 0.36, 0.44, 0.6, 0.48, 0.6, 0.24, 0),
]
METALS = ["M1", "M2", "M3", "M4", "M5", "T4M2"]


def snap(x):
    return round(x / GRID) * GRID


class Ring:
    def __init__(self, w, h, corner):
        self.w, self.h, self.c = w, h, corner

    def cut(self, d):
        """Corner cut leg at inset d (um, on the 1 nm grid). The 45 degree edge at inset d is
        x + y = c + 1.414 d: with 1.414 instead of sqrt(2) every 45 degree band is a fraction of
        a nm narrower than its nominal width (SRCK_4 / 5 / 6 / 10 flag a band that is wider,
        and a 5 nm grid made the 2 um gap 2.001 um wide)."""
        return (round(self.c * 1000) + round(1414 * d) - round(d * 1000)) / 1000.0

    def octagon(self, d):
        """Die outline inset by d with 45 degree corners (exact 45 degree, on grid)."""
        w, h = self.w, self.h
        t = self.cut(d)
        pts = [(d, t), (t, d), (w - t, d), (w - d, t), (w - d, h - t), (w - t, h - d), (t, h - d), (d, h - t)]
        return db.DPolygon([db.DPoint(x, y) for x, y in pts])

    def band(self, d1, d2):
        """Ring between the insets d1 and d2."""
        r = db.Region(self.octagon(d1).to_itype(1e-3)) - db.Region(self.octagon(d2).to_itype(1e-3))
        return r

    def bar(self, d, s, margin):
        """Straight bar of width s at inset d on each side, ending before the 45 degree bend."""
        w, h = self.w, self.h
        t = self.cut(d + s) + margin
        return [db.DBox(t, d, w - t, d + s), db.DBox(t, h - d - s, w - t, h - d),
                db.DBox(d, t, d + s, h - t), db.DBox(w - d - s, t, w - d, h - t)]

    def squares(self, d0, n_cols, size, col_pitch, along_pitch, phase, margin):
        """Square cuts in columns starting at inset d0 on the four straight sides."""
        out = []
        w, h = self.w, self.h
        for k in range(n_cols):
            d = d0 + k * col_pitch
            off = phase + (k % 2) * along_pitch / 2
            t = self.cut(d + size) + margin
            for length, side in ((w, "b"), (w, "t"), (h, "l"), (h, "r")):
                s = t + off
                while s + size <= length - t + 1e-9:
                    a = snap(s)
                    if side == "b":
                        out.append(db.DBox(a, d, a + size, d + size))
                    elif side == "t":
                        out.append(db.DBox(a, h - d - size, a + size, h - d))
                    elif side == "l":
                        out.append(db.DBox(d, a, d + size, a + size))
                    else:
                        out.append(db.DBox(w - d - size, a, w - d, a + size))
                    s += along_pitch
        return out


def build(ly, w, h, corner, name="ICS55_SEALRING"):
    cell = ly.create_cell(name)
    ring = Ring(w, h, corner)
    li = {k: ly.layer(*v) for k, v in L.items()}

    def put(layer, region):
        cell.shapes(li[layer]).insert(region)

    put("SRINGBLK", ring.band(0.0, INNER[1]))
    put("SRINGBLK_DRM", ring.band(0.0, INNER[1]))
    put("PP", ring.band(OUTER[0], INNER[1]))
    put("AA", ring.band(OUTER[0] + 0.2, INNER[1] - 0.2))
    for m in METALS:
        put(m, ring.band(*OUTER) + ring.band(*INNER))
    put("RDL", ring.band(4.5, 10.0))
    put("RV", ring.band(6.5, 9.5))
    for sq, bar, s, enc, sp_bar, sp_col, sp_al, enc_out, grp in CUTS:
        col, al = s + sp_col, s + sp_al
        phase = grp * al / 2
        # bars: window side of the outer ring, both edges of the inner ring
        bars = [OUTER[0] + enc, INNER[0] + enc, INNER[1] - enc - s]
        for d in bars:
            # straight segments only: a 45 degree bar cannot be exactly 0.09 / 0.36 wide on the
            # grid (CT_W_2 / Vn bar / T4V2_W_2 have no seal ring exemption)
            for b in ring.bar(d, s, 1.0):
                cell.shapes(li[bar]).insert(b)
        # inner ring squares between the bars
        lo, hi = INNER[0] + enc + s + sp_bar, INNER[1] - enc - s - sp_bar
        n = int(math.floor((hi - lo - s) / col + 1e-9)) + 1
        start = snap(lo + ((hi - lo) - ((n - 1) * col + s)) / 2)
        sh = cell.shapes(li[sq])
        for b in ring.squares(start, n, s, col, al, phase, 1.0):
            sh.insert(b)
        # outer ring squares: chip side, enc_out from the inner edge, sp_bar from the bar
        lo, hi = OUTER[0] + enc + s + sp_bar, OUTER[1] - enc_out
        n = int(math.floor((hi - lo - s) / col + 1e-9)) + 1
        if n > 0:
            start = snap(hi - ((n - 1) * col + s))
            for b in ring.squares(start, n, s, col, al, phase, 1.0):
                sh.insert(b)
    return cell


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--input")
    ap.add_argument("--output", required=True)
    ap.add_argument("--die-width", type=float, required=True)
    ap.add_argument("--die-height", type=float, required=True)
    ap.add_argument("--corner", type=float, default=50.0, help="45 degree bend start from the die corner (SR.23 >= 50)")
    a = ap.parse_args()
    ly = db.Layout()
    if a.input:
        ly.read(a.input)
        top = ly.top_cell()
    else:
        ly.dbu = 0.001
        top = ly.create_cell("SEALRING_TOP")
    ring = build(ly, a.die_width, a.die_height, a.corner, name="%s_SEALRING" % top.name)
    top.insert(db.DCellInstArray(ring.cell_index(), db.DTrans()))
    ly.write(a.output)
    print("seal ring %g x %g um -> %s" % (a.die_width, a.die_height, a.output))


if __name__ == "__main__":
    main()

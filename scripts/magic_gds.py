#!/usr/bin/env python3
"""Copy a GDS file into the layer numbering of the Magic tech file (ics55.tech).

Usage:
  magic_gds.py <in.gds> <out.gds>          (needs the klayout Python module)

Magic only accepts GDS layer / datatype numbers up to 255. Every shape or text on a layer
above that (the icsprout55 marker layers CHIPBLK 351/12, NODRC 357/12, SUBCKTLVS 313/12,
PSUB 261/12, WELTXT 388/12, ...) is moved to (layer - 256, datatype + 100), which is where
ics55.tech reads it. Everything else is copied unchanged.
"""

import sys

import klayout.db as db


def magic_ld(layer, datatype):
    if layer > 255 or datatype > 255:
        return (layer - 256 if layer > 255 else layer, datatype + 100)
    return (layer, datatype)


def convert(src, dst):
    ly = db.Layout()
    ly.read(src)
    moved = 0
    for li in list(ly.layer_indexes()):
        info = ly.get_info(li)
        nl, nd = magic_ld(info.layer, info.datatype)
        if (nl, nd) == (info.layer, info.datatype):
            continue
        target = ly.layer(db.LayerInfo(nl, nd))
        ly.move_layer(li, target)
        ly.delete_layer(li)
        moved += 1
    ly.write(dst)
    return moved


if __name__ == '__main__':
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    n = convert(sys.argv[1], sys.argv[2])
    print('magic_gds: %d layers renumbered -> %s' % (n, sys.argv[2]), file=sys.stderr)

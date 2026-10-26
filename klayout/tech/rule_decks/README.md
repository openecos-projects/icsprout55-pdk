# ICS55 KLayout DRC rule decks

Translation in progress of the Calibre runset
`icsprout55-pdk/pv/DRC/ICsprout_CalDRC_55LLULP1233_REV1_0_OS.drc` into the
KLayout DRC language (Ruby). The structure follows the IHP SG13G2 KLayout DRC.

```
tech/ics55.drc                 main deck: switches, helpers, includes
tech/rule_decks/layers_def.drc     GENERATED: one variable per Calibre layer (lowercased name)
tech/rule_decks/derived_layers.drc hand-translated derived layers (Calibre statement kept as comment)
tech/rule_decks/feol/*.drc         FEOL rules, one file per Calibre section
tech/rule_decks/beol/*.drc         BEOL rules, one file per Calibre section
```

Run:

```
klayout -b -r ics55.drc -rd input=design.gds -rd report=design.lyrdb [-rd topcell=TOP]
```

Requires KLayout >= 0.29 (edge pair `not_inside`).

Regenerate `layers_def.drc` after a Calibre deck update:

```
cd hacking
python3 calibre_layers_to_klayout_drc.py \
    ../icsprout55-pdk/pv/DRC/ICsprout_CalDRC_55LLULP1233_REV1_0_OS.drc \
    ../icsprout55/libs.tech/klayout/tech/rule_decks/layers_def.drc
```

Regression on the standard cells and IO: see `tech/testing/README.md`
(icsprout55-openpdk repository only).
The LVS deck (`tech/ics55.lvs`) is described in `rule_decks/lvs/README.md`.

## Conventions

- Rule names are the Calibre `RULECHECK` names (`ACT_W_1`, `MET1_S_1`, ...), so
  results can be compared 1:1. Each rule keeps the Calibre statement as a comment.
- Metal stack is the Calibre default: 6 metals, 1 top metal (M1-M5, T4V2, T4M2).
- Untranslated rules of a section are listed in a `# TODO:` at the end of its file.

## SVRF to KLayout cheat sheet

| Calibre                                   | KLayout                               |
|-------------------------------------------|---------------------------------------|
| `INT L < v ABUT<90 SINGULAR REGION`       | `L.width(v.um, euclidian)`            |
| `EXT L < v ABUT<90 SINGULAR REGION`       | `L.space(v.um, euclidian)`            |
| `EXT L < v ... OPPOSITE`                  | `L.space(v.um, projection)`           |
| `ENC A B < v` (A inside B)                | `B.enclosing(A, v.um, euclidian)`     |
| `AREA L < a`                              | `L.with_area(nil, a)`                 |
| `L WITH WIDTH > w`                        | `wider_than(L, w)`                    |
| `NOT RECTANGLE L == w BY == w`            | `not_square(L, w)`                    |
| `AREA ((HOLES L INNER) NOT L) < a`        | `small_holes(L, a)`                   |
| `A NOT B` / `A AND B` / `A OR B`          | `a - b` / `a & b` / `a \| b`          |
| `A NOT OUTSIDE B`                         | `a.not_outside(b)`                    |
| `... NOT INSIDE NODRC`                    | `.not_inside(nodrc)`                  |

## Status

| Section | Translated                                  |
|---------|---------------------------------------------|
| DNW     | W_1, S_1                                    |
| NW1     | W_1, S_1, A_1, A_2                          |
| ACT     | W_1, S_1, A_1, A_2                          |
| PO      | W_1, S_1, A_1, A_2                          |
| NP / PP | W_1, S_1, A_1, A_2                          |
| CT      | W_1 (partial), S_1                          |
| MET1    | W_1, S_1, A_1, A_2                          |
| M2-M5   | W_1a, W_1b, S_1, A_1, A_2                   |
| V1-V4   | W_1, S_1, EN_2a (inside only), EN_5a        |
| T4V2    | W_1, S_1                                    |
| T4M2    | W_1, S_1, A_1, A_2                          |

Not started: wide-metal spacing (`Mn_2b`), density, connectivity-based rules
(`NOT CONNECTED`), latch-up, ESD, dummy fill, antenna (`.ant`), resistors/MOM/eFuse,
other implants/oxides (NVT/PVT, DG/TG, SAB, HRP), RV/RDL/CB.

Known approximations:
- Calibre `SINGULAR` (corner-to-corner) behaviour has not been compared with KLayout yet.
- The INDALL 89 degree waivers (MET1_S_1, T4M2_W_1/S_1) are not implemented.

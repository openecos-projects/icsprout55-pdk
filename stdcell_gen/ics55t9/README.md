# ics55t9 standard cell library

Made by stdcell-gen (c446888) on 2026-11-15: `make -f Makefile.ics55t9 deliverable`.

| | |
|---|---|
| Cells | 437 (comb 365, ff 20, holder 1, latch 40, physical 9, tie 2) |
| Site | `obssite`, 0.200 x 1.800 um (the cell height) |
| GDS / LEF macros | 437 / 437 |
| Netlists (CDL / SPICE) | 437 / 437 |
| Liberty | `liberty/ics55t9_ff_1p32v_m40c.lib`: 387 cells; `liberty/ics55t9_ss_1p08v_125c.lib`: 387 cells; `liberty/ics55t9_tt_1p20v_25c.lib`: 387 cells |
| DRC / LVS | 436 DRC clean, 429 LVS match of 437 checked (`doc/verification/drc_lvs.txt`) |
| Verilog against the netlists | PASS 425, SKIP 12 (`doc/verification/verilog.txt`) |

## Contents

- `libs.ref/ics55t9/gds/ics55t9.gds`: all the cells in one layout.
- `libs.ref/ics55t9/lef/ics55t9.lef`: SITE and macros (pins, obstructions); use it with the tech LEF of the PDK.
- `libs.ref/ics55t9/liberty/`: timing and power per corner (lctime + ngspice, NLDM); latches and cells without logic are not characterized.
- `libs.ref/ics55t9/verilog/ics55t9.v`: functional models (power pins under `USE_POWER_PINS`); `ics55t9_bb.v`: blackboxes.
- `libs.ref/ics55t9/cdl/ics55t9.cdl`: LVS netlists; `spice/ics55t9.spice`: simulation netlists.
- `libs.ref/ics55t9/doc/datasheet/index.html`: datasheet; `doc/verification/`: DRC/LVS and Verilog results per cell.
- `libs.ref/ics55t9/cell_list`: the cells.
- `libs.tech/librelane/ics55t9/config.tcl`: a draft LibreLane library configuration (not run yet).

The cells have no bulk contacts: place TAPCELL in the rows. The fillers are FILL1..FILL64.

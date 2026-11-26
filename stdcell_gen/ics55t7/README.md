# ics55t7 standard cell library

Made by stdcell-gen (17c3ab1) on 2026-11-27: `make -f Makefile.ics55t7 deliverable`.

| | |
|---|---|
| Cells | 405 (comb 333, ff 18, holder 1, latch 37, physical 14, tie 2) |
| Site | `obssite`, 0.200 x 1.400 um (the cell height) |
| GDS / LEF macros | 405 / 405 |
| Netlists (CDL / SPICE) | 405 / 405 |
| Liberty | `liberty/ics55t7_ff_1p32v_m40c.lib`: 354 cells; `liberty/ics55t7_ss_1p08v_125c.lib`: 354 cells; `liberty/ics55t7_tt_1p20v_25c.lib`: 354 cells |
| DRC / LVS | 404 DRC clean, 397 LVS match of 405 checked (`doc/verification/drc_lvs.txt`) |
| Verilog against the netlists | PASS 388, SKIP 17 (`doc/verification/verilog.txt`) |

## Contents

- `libs.ref/ics55t7/gds/ics55t7.gds`: all the cells in one layout.
- `libs.ref/ics55t7/lef/ics55t7.lef`: SITE and macros (pins, obstructions); use it with the tech LEF of the PDK.
- `libs.ref/ics55t7/liberty/`: timing and power per corner (lctime + ngspice, NLDM); latches and cells without logic are not characterized.
- `libs.ref/ics55t7/verilog/ics55t7.v`: functional models (power pins under `USE_POWER_PINS`); `ics55t7_bb.v`: blackboxes.
- `libs.ref/ics55t7/cdl/ics55t7.cdl`: LVS netlists; `spice/ics55t7.spice`: simulation netlists.
- `libs.ref/ics55t7/doc/datasheet/index.html`: datasheet; `doc/verification/`: DRC/LVS and Verilog results per cell.
- `libs.ref/ics55t7/cell_list`: the cells.
- `libs.tech/librelane/ics55t7/config.tcl`: a draft LibreLane library configuration, with `synth_exclude.cells` and `tracks.info` (the site pitch, offset 0, on the metals of the cells).

The cells have no bulk contacts: place TAPCELL in the rows. The fillers are FILL1..FILL64.

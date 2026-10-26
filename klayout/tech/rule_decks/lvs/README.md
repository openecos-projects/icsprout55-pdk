# ICS55 KLayout LVS rule deck

Translation in progress of the Calibre runset
`icsprout55-pdk/pv/LVS/ICsprout_CalLVS_55LLULP1233_REV1_0_OS.lvs` into the
KLayout LVS language (Ruby), with the Calibre defaults `IO TGOX_33`,
`TOTALMETAL 6`, `TOP_METAL_NUM SINGLE`.

```
tech/ics55.lvs                     main deck: options, schematic, tapless, comparison
tech/rule_decks/lvs/layers_def.lvs     GENERATED from the Calibre LVS layer map
tech/rule_decks/lvs/schematic.lvs      CDL cleanup and netlist reader
tech/rule_decks/lvs/derived_layers.lvs hand-translated derivations (Calibre statement kept as comment)
tech/rule_decks/lvs/devices.lvs        device extraction
tech/rule_decks/lvs/connectivity.lvs   connections, substrate, labels
```

Run:

```
klayout -b -r ics55.lvs -rd input=design.gds -rd schematic=design.cdl \
    [-rd topcell=TOP] [-rd report=design.lvsdb] [-rd target_netlist=design.cir] \
    [-rd tapless=true] [-rd implicit_nets="VDDIO VSSIO"]
```

Regenerate `layers_def.lvs` after a Calibre deck update:

```
cd hacking
python3 calibre_layers_to_klayout_drc.py \
    ../icsprout55-pdk/pv/LVS/ICsprout_CalLVS_55LLULP1233_REV1_0_OS.lvs \
    ../icsprout55/libs.tech/klayout/tech/rule_decks/lvs/layers_def.lvs
```

Regression on the standard cells and IO: see `tech/testing/README.md`
(icsprout55-openpdk repository only).

## Devices

Device names are the model names of the CDL netlists.

| Device | Recognition (Calibre layer) | Compared |
|--------|-----------------------------|----------|
| `nm1p2_svt_lp` / `pm1p2_svt_lp` | `ncore_svt_gate` / `pcore_svt_gate` | W, L |
| `nm1p2_hvt_lp` / `pm1p2_hvt_lp` | `ncore_hvt_gate` / `pcore_hvt_gate` (NVT3 / PVT3) | W, L |
| `nm1p2_lvt_lp` / `pm1p2_lvt_lp` | `ncore_lvt_gate` / `pcore_lvt_gate` (NVT1 / PVT1) | W, L |
| `nm3p3_lp` / `pm3p3_lp` | `nio2_gate` / `pio2_gate` (TGOX) | W, L |
| `dio_1p2_np_pw{,_hvt,_lvt}_lp` | `ndiocore_{svt,hvt,lvt}_diode` (DIODE marker) | A, P |
| `dio_1p2_pp_nw{,_hvt,_lvt}_lp` | `pdiocore_{svt,hvt,lvt}_diode` (DIODE marker) | A, P |
| `dio_3p3_np_pw_lp` / `dio_3p3_pp_nw_lp` | `ndioio2_diode` / `pdioio2_diode` (TGOX) | A, P |
| `re_ppo_2t` / `re_ppo_sab_2t` | `rppo_2T` / `rpposab_2T` (POLYres) | W, L |

Tolerance 0.1% on all compared properties (Calibre `mos_err`, `dio_err`,
`res_err`). Not translated yet: native, SRAM, 2.5V/DGOX, DNW devices, BJTs,
varactors, MOM/MIM, metal/diffusion/well/HRP resistors, eFuse, ERC checks.

## Behaviour

- **Schematic cleanup.** The vendor CDLs are cleaned before reading: `+`
  continuations joined, the CDL `/` separator and `$X=` annotations removed,
  repeated identical `.SUBCKT`s kept once, undeclared parameters (`nw`, `pw`,
  `nl`, `pl` of the `INV`/`TG`/... helpers) given a default. The cleaned copy
  is written next to the report. `re_ppo*` subcircuit calls are read as
  resistors with R = 10.252 * L / W (Calibre `rsh_rppo`), like the extraction.
- **Substrate.** Outside `SUBCKTLVS` (313/12) the p-substrate is the global
  net `SUBSTRATE`. Inside a `SUBCKTLVS` marker it is a separate island, as in
  Calibre (`pWell = bulk NOT (sub2Ring OR NW)`).
- **Pin shapes.** The PDK layer map (`ics55.map`) writes LEF/DEF pin shapes on
  datatype 6, which Calibre treats as text only; here those polygons are part
  of the metal so top-level pin labels attach.
- **Ports from labels.** Like Calibre `PORT LAYER TEXT`, every labelled net of
  a cell becomes a pin even when the parent does not connect it.
- **Split gates.** Calibre `LVS REDUCE SPLIT GATES YES`: `split_gates` on the
  layout, plus joining of symmetric nets on both sides (leaf circuits only).
- **Metals are not merged.** `m1`..`m6` and the vias are joined with `+`, not
  `|`. In deep mode a merge with a parent wire that touches a cell pin moves the
  polygon to the parent and the cell label loses its shape, so the pins of placed
  standard cells came out unnamed (and the top level did not match).
- **Pins swapped by the layout.** Some cells match only with input pins paired
  crosswise: the transistor order of the GDS differs from the CDL
  (NAND2X0P5H7R/X8/X16: A and B; AOI22X3H7R: A0/B1 and A1/B0). The cell
  matches, but every instance looks miswired at the top. Calibre accepts this
  with gate recognition; here, when the first comparison fails, the permutations
  found in the cells that matched are declared as `equivalent_pins` and the
  netlists are compared again (logged as "pins ... are swapped in the layout").
- **Pins shorted by all parents.** Two pins of a cell that connect to the same
  net in every instance are joined into one pin. In a placed design this ties
  the well / substrate pins of the tapless standard cells to VDD / VSS (through
  FILLTAP and the global substrate) and the split supply rails inside IO cells.
  A pin left open in any instance stays separate, so missing taps still show.
  This runs on **both** netlists. On the layout side it joins the well and
  substrate pins of the extracted cells; on the schematic side it does the same
  for libraries whose CDL has the well bias as explicit pins -- every cell of
  the private 9-track standard cells (`ICsprout55_9T{S,H,L}VT_basic`) has
  `VNW` / `VPW`, tied to VDD / VSS by the taps in the layout and by the
  LibreLane global connections (`SCL_POWER_PINS` / `SCL_GROUND_PINS`) in the
  placed netlist. Joining one side only would leave those pins without a
  counterpart and every cell would mismatch.
- **`tapless=true`.** For a standard cell library tested on its own (no
  FILLTAP): in every circuit the substrate is joined to `VSS` and wells without
  a tap to `VDD` (`-rd tapless_power=` / `-rd tapless_ground=` to change the
  names). Do not use it on placed designs.
- **`implicit_nets`.** Space or comma separated label patterns joined by name
  (KLayout `connect_implicit`): `LABEL` in the top cell, `CELL:LABEL` in the
  cells matching `CELL`. Used for standalone IO cells, whose supply rails come
  in pieces.

## LibreLane

LibreLane's `KLayout.LVS` step only runs for the IHP PDKs. The PDK ships a
LibreLane plugin (`libs.tech/librelane/librelane_plugin_ics55`) with the step
`ICS55.KLayoutLVS`, the same invocation for this PDK. Add
`$PDK_ROOT/$PDK/libs.tech/librelane` to `PYTHONPATH` and in the design config:

```yaml
meta:
  substituting_steps:
    "-Netgen.LVS": OpenROAD.WriteCDL
    Netgen.LVS: ICS55.KLayoutLVS
```

`Checker.LVS` then checks its result. See `demo_counter` and `demo_chip`.

Not done yet: metal resistors (`METnres`) are not cut out of the metal nets,
DNW / isolated p-well.

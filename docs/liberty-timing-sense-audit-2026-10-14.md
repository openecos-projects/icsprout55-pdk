# Standard-cell Liberty timing-sense correction audit

Date: 2026-10-14

## Scope

This audit covers every `combinational` timing arc in the seven PVT Liberty
views for each standard-cell variant:

- H7CH
- H7CL
- H7CR

For each arc with a valid Boolean transition, the output transition derived
from the Liberty `function` (and applicable `when` condition) was compared
with its declared `timing_sense`.

## Finding and correction

Two timing-arc polarity errors were found in every PVT view of all three
variants.  The cell functions themselves are unchanged.

| Cell pattern | Arc | Previous `timing_sense` | Corrected `timing_sense` |
| --- | --- | --- | --- |
| `NAND2BX0P7H7[H/L/R]` | `AN -> Y` | `negative_unate` | `positive_unate` |
| `TINVX3H7[H/L/R]` | `A -> Y` | `positive_unate` | `negative_unate` |

This is 3 library variants x 7 PVT views x 2 arcs, for 42 Liberty edits.

## Results

- 138,306 combinational timing arcs were enumerated.
- 137,130 arcs had a valid Boolean transition and were checked.
- 1,176 arcs had no valid Boolean transition and were excluded from polarity
  checking; they are not reported as polarity defects.
- Before correction, the 42 arcs above were the only detected polarity
  mismatches.
- After correction, all 137,130 checked arcs agree with the Boolean function.

## Related LEF direction check

The standard-cell `_ecos.lef` files were compared with the Liberty pin
directions using Liberty as the reference.  All comparable logical pins in
H7CH, H7CL, and H7CR agree.  The ICG `ECK` pins in the available standard-cell
libraries are also consistently declared as outputs in both Liberty and LEF.

Two incomplete PVT-content observations were intentionally left unchanged:

- H7CH `ss_cworst_1p08_m40` lacks `ESDFFQX1H7H` and `SDFFSRQX2H7H`.
- H7CR `ss_cworst_1p08_m40` lacks `ICGNX3H7R`.

These are library-content completeness differences, not pin-direction or
timing-sense corrections.

## Release delivery

Standard-cell Liberty payloads are intentionally excluded from the Git tree
and are distributed as Release assets.  After this audit document is reviewed,
the corrected H7CH, H7CL, and H7CR Liberty archives will be published in
`v1.10.103`.  The four GDS archives will be carried forward unchanged so that
`make unzip` continues to retrieve its complete expected asset set.

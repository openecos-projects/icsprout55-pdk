# IO Liberty corner restrictions

Restriction recorded: 2026-10-23. Numerical audit: 2026-10-18.

## Do not use these three corner files

> [!WARNING]
> Do not load the following IO Liberty files into library sets used for
> timing-driven synthesis, implementation, static timing analysis, or timing
> signoff until corrected characterization data have been supplied and validated.
> 以下三个 IO Liberty corner 存在已知时序表异常，修正并验证前不要使用。

- [ICSIOA_N55_3P3_ss_1p08_2p97_m40c.lib](ICSIOA_N55_3P3_ss_1p08_2p97_m40c.lib)
- [ICSIOA_N55_3P3_ff_1p32_3p63_125c.lib](ICSIOA_N55_3P3_ff_1p32_3p63_125c.lib)
- [ICSIOA_N55_3P3_ff_1p32_3p63_m40c.lib](ICSIOA_N55_3P3_ff_1p32_3p63_m40c.lib)

These files are retained for diagnosis and traceability. This notice documents
the restriction; it does not automatically prevent EDA tools from loading them.
Do not select every `.lib` in this directory with an unfiltered wildcard.
The restriction applies to these IO files, not to standard-cell libraries with
similar corner names.

## Observed anomaly

The affected tables are in cell `P65_1233_PBMUX`:

```liberty
pin (PAD) {
    timing () {
        related_pin : "OE";
        timing_type : three_state_enable;
        /* Affected tables: cell_rise and rise_transition */
    }
}
```

This is an anomaly in numerical delay and transition tables, not a
`timing_sense` polarity or LEF pin-direction issue.

At an input transition of 0.1 ns and the first output-load coordinate, the
recorded values are:

| Excluded IO corner | Output load (pF) | `cell_rise` (ns) | `rise_transition` (ns) |
| --- | ---: | ---: | ---: |
| SS / 1.08 V / 2.97 V / -40 C | 1.569030 | 217.9623774 | 217.9623774 |
| FF / 1.32 V / 3.63 V / 125 C | 1.426285 | 182.8261672 | 182.8261672 |
| FF / 1.32 V / 3.63 V / -40 C | 1.426285 | 178.8984255 | 178.8984255 |

All six IO libraries use the same time unit (1 ns) and capacitance unit (1 pF).
At the same coordinates within each process group, the corresponding updated
FF / 0 C and SS / 125 C `cell_rise` values are 0.5377650 ns and 0.6822120 ns.
The excluded corners are approximately 319 to 340 times larger at these sample
points. The SS and FF output-load coordinates differ, so they are not directly
compared with one another.

In each excluded corner, all 30 entries of `cell_rise` exactly equal the
corresponding entries of `rise_transition`. The numerical audit identified
3 files x 2 tables x 30 entries for follow-up with the library provider.
It did not establish that every other table in these files is incorrect.

The [2026-08-01 update](https://github.com/openecos-projects/icsprout55-pdk/commit/6e902bfee4a64dc2097b35e9e34d3b075953baca)
changed the corresponding tables only in FF / 0 C, TT / 25 C, and SS / 125 C.
The three excluded corners retained their original anomalous tables.

## Other available IO corners and coverage

The following files are not subject to this specific restriction:

- [ICSIOA_N55_3P3_ss_1p08_2p97_125c.lib](ICSIOA_N55_3P3_ss_1p08_2p97_125c.lib)
- [ICSIOA_N55_3P3_tt_1p2_3p3_25c.lib](ICSIOA_N55_3P3_tt_1p2_3p3_25c.lib)
- [ICSIOA_N55_3P3_ff_1p32_3p63v_0c.lib](ICSIOA_N55_3P3_ff_1p32_3p63v_0c.lib)

This does not certify their complete characterization or signoff suitability.
They are not substitutes for different voltage or temperature conditions.
Excluding the anomalous files does not waive required corner coverage: obtain
validated libraries or an explicitly approved coverage plan for any required
conditions. In particular, the current H7CH/H7CL/H7CR standard-cell library set
does not include FF / 1.32 V / 0 C, even though this IO corner is available.

## Conditions for restoring use

Obtain corrected characterization data from the library provider, recheck the
affected `OE -> PAD` tables and their units, coordinates, and cross-corner
behavior, and record the validated file versions before lifting this restriction.
Do not repair these values by dividing them by a constant, copying another
corner, or changing a temperature label.

The standard-cell `timing_sense` corrections in Release `v1.10.103` do not fix
this IO numerical-table issue. This documentation change does not modify,
delete, or rename any Liberty file.

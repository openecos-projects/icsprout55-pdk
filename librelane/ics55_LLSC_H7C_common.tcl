# Shared configuration of the public 7-track standard cell libraries
# (ics55_LLSC_H7C{R,H,L}, from the icsprout55-pdk submodule).
#
# The three Vt flavours have the same cells and differ only in the cell name
# suffix (H7R / H7H / H7L), so each library's config.tcl only sources this file
# and everything below is derived from STD_CELL_LIBRARY. The views (cell LEF /
# GDS / liberty) are selected in the PDK config.tcl.

if { ![regexp {^ics55_LLSC_H7C([RHL])$} $::env(STD_CELL_LIBRARY) -> vt] } {
    error "ics55_LLSC_H7C_common.tcl sourced for '$::env(STD_CELL_LIBRARY)', which is not an ics55_LLSC_H7C library"
}
set sfx "H7$vt"

set scl_tech_dir "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/librelane/$::env(STD_CELL_LIBRARY)"

# Synthesis mapping
 # Latch mapping
set ::env(SYNTH_LATCH_MAP) "$scl_tech_dir/latch_map.v"

 # MUX4 mapping
set ::env(SYNTH_MUX4_MAP) "$scl_tech_dir/mux4_map.v"

 # MUX2 mapping
set ::env(SYNTH_MUX_MAP) "$scl_tech_dir/mux2_map.v"

# Tri-state buffer mapping
set ::env(SYNTH_TRISTATE_MAP) "$scl_tech_dir/tribuff_map.v"

# --- Placement site (tech.yml: site) ----------------------------------------------
set ::env(PLACE_SITE) "core7"

# Welltap insertion (tech.yml: fills.tap + tap_distance).
set ::env(WELLTAP_CELL) "FILLTAP${sfx}"
set ::env(FP_TAPCELL_DIST) 15
# The library has no endcap cells (https://github.com/openecos-projects/ecos-studio/issues/47).
# NP / PP / NW of the cells extend past the cell boundary and are only complete with
# a neighbour on all four sides: a cell at a row end sees NP/PP_EX_1_EX_1a, a cell in
# the top / bottom row NP_EN_3 / PP_EN_3. The plain fillers (no devices, implant and
# well bands over the full height) close the rows instead:
# - ENDCAP_CELL: one site of FILLER1 at both ends of every row (OpenROAD tapcell /
#   place_endcaps; also reserved by OpenROAD.CutRows),
# - ENDCAP_HORIZONTAL_CELLS: the top and bottom row of every row block filled with
#   fillers. Only the plugin step ICS55.TapEndcapInsertion uses it (substitute
#   OpenROAD.TapEndcapInsertion, see librelane_plugin_ics55); it costs those two rows.
# Every usable cell is DRC clean at a row end and in the outer rows with both
# (each cell alone between two FILLER1 with a filler row above and below).
set ::env(ENDCAP_CELL) "FILLER1${sfx}"
set ::env(ENDCAP_HORIZONTAL_CELLS) [list "FILLER64${sfx}" "FILLER32${sfx}" "FILLER16${sfx}" \
    "FILLER8${sfx}" "FILLER4${sfx}" "FILLER2${sfx}" "FILLER1${sfx}"]

# --- Synthesis cells (tech.yml: sta.driving_cell, tie) --------------------------
set ::env(SYNTH_DRIVING_CELL) "INVX8${sfx}/Y"
set ::env(OUTPUT_CAP_LOAD) 33.5
set ::env(SYNTH_BUFFER_CELL) "BUFX4${sfx}/A/Y"
set ::env(SYNTH_TIEHI_CELL) "TIEHI${sfx}/Z"
set ::env(SYNTH_TIELO_CELL) "TIELO${sfx}/Z"

# --- Fill / decap / tap cells (tech.yml: fills) ---------------------------------
# tech.yml gives regular expressions; LibreLane wants shell wildcards.
# FILLCAP8/16/32 still fail DRC after the layout fix (stdcell_fixed/<lib>/unusable.cells),
# only FILLCAP4 is clean.
set ::env(DECAP_CELLS) [list "FILLCAP4${sfx}"]
set ::env(FILL_CELLS) [list "FILLER*${sfx}"]

# Antenna diode: ANT2 (n+/pwell + p+/nwell diode, 0.197 um2). It is in the LEF,
# Verilog and CDL but not in the vendor liberty; install.sh writes
# <lib>_antenna.lib for it (hacking/antenna_liberty.py), added to LIB in config.tcl.
set ::env(DIODE_CELL) "ANT2${sfx}/A"

# Placement cell padding in sites. 0 matches the bring-up configuration
# (DFFRAM RAM blocks are macro-dominated; >0 is only needed for diode
# insertion flows, which are inactive as long as DIODE_CELL is unset).
set ::env(GPL_CELL_PADDING) 0
set ::env(DPL_CELL_PADDING) 0

set ::env(CELL_PAD_EXCLUDE) [list "FILLCAP*${sfx}" "TIEHI${sfx}" "TIELO${sfx}"]

# --- Excluded cells --------------------------------------------------------------
# Synthesis and place & route must not use (overrides the /dev/null of config.tcl):
# - the cells whose layout does not match their CDL in the KLayout LVS regression
#   (the lvs_stdcell_* golden files, plain and _M2 GDS),
# - the cells that still fail DRC after the layout fix (stdcell_fixed/<lib>/unusable.cells,
#   hacking/stdcell_fix/README.md); they are installed with the vendor layout.
set ::env(SYNTH_EXCLUDED_CELL_FILE) "$scl_tech_dir/synth_exclude.cells"
set ::env(PNR_EXCLUDED_CELL_FILE) "$scl_tech_dir/pnr_exclude.cells"

# --- PDN -------------------------------------------------------------------------
set ::env(PDN_RAIL_WIDTH) 0.16

# --- Clock tree synthesis --------------------------------------------------------
set ::env(CTS_ROOT_BUFFER) "BUFX16${sfx}"
set ::env(CTS_CLK_BUFFERS) [list "BUFX4${sfx}" "BUFX8${sfx}" "BUFX16${sfx}"]

# --- Constraints (tech.yml: sta + bring-up configuration) ----------------------
# FIXME: These are copied from ihp.. which are copied from sky130
set ::env(MAX_FANOUT_CONSTRAINT) 10
set ::env(CLOCK_UNCERTAINTY_CONSTRAINT) 0.25
set ::env(CLOCK_TRANSITION_CONSTRAINT) 0.15
set ::env(TIME_DERATING_CONSTRAINT) 5
set ::env(IO_DELAY_CONSTRAINT) 20

# Tri-state buffers exist in the library (TBUF*${sfx}) but were not part of the
# bring-up configuration; uncomment if needed.
# set ::env(TRISTATE_CELLS) [list "TBUF*${sfx}"]

# Heuristic diode insertion (only with RUN_HEURISTIC_DIODE_INSERTION): net length in um.
# Antenna rule AR_5_10: metal / gate area > 5000 without a diode; the smallest input gate
# (0.34 um x 0.06 um = 0.0204 um2) reaches it with ~100 um2 of 0.1 um wide metal, ~1000 um.
set ::env(HEURISTIC_ANTENNA_THRESHOLD) 1000

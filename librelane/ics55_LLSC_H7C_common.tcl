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
# No endcap cells in this library; ENDCAP_CELL intentionally unset.
# see: https://github.com/openecos-projects/ecos-studio/issues/47

# --- Synthesis cells (tech.yml: sta.driving_cell, tie) --------------------------
set ::env(SYNTH_DRIVING_CELL) "INVX8${sfx}/Y"
set ::env(OUTPUT_CAP_LOAD) 33.5
set ::env(SYNTH_BUFFER_CELL) "BUFX4${sfx}/A/Y"
set ::env(SYNTH_TIEHI_CELL) "TIEHI${sfx}/Z"
set ::env(SYNTH_TIELO_CELL) "TIELO${sfx}/Z"

# --- Fill / decap / tap cells (tech.yml: fills) ---------------------------------
# tech.yml gives regular expressions; LibreLane wants shell wildcards.
set ::env(DECAP_CELLS) [list "FILLCAP*${sfx}"]
set ::env(FILL_CELLS) [list "FILLER*${sfx}"]

# Antenna diode: tech.yml fills.diode is empty -- this library has no diode
# cell. DIODE_CELL intentionally left unset; all diode insertion steps skip
# themselves when it is null.
# set ::env(DIODE_CELL) "..."

# Placement cell padding in sites. 0 matches the bring-up configuration
# (DFFRAM RAM blocks are macro-dominated; >0 is only needed for diode
# insertion flows, which are inactive as long as DIODE_CELL is unset).
set ::env(GPL_CELL_PADDING) 0
set ::env(DPL_CELL_PADDING) 0

set ::env(CELL_PAD_EXCLUDE) [list "FILLCAP*${sfx}" "TIEHI${sfx}" "TIELO${sfx}"]

# --- Excluded cells --------------------------------------------------------------
# Cells whose layout does not match their CDL in the KLayout LVS regression
# (the lvs_stdcell_* golden files of the KLayout LVS regression, plain and _M2 GDS).
# Synthesis and place & route must not use them. Overrides the /dev/null of config.tcl.
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

# TODO adjust threshold
# set ::env(HEURISTIC_ANTENNA_THRESHOLD) 90

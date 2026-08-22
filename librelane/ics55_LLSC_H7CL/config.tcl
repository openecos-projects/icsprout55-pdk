set current_folder [file dirname [file normalize [info script]]]

# Synthesis mapping
 # Latch mapping
set ::env(SYNTH_LATCH_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/librelane/$::env(STD_CELL_LIBRARY)/latch_map.v"

 # MUX4 mapping
set ::env(SYNTH_MUX4_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/librelane/$::env(STD_CELL_LIBRARY)/mux4_map.v"

 # MUX2 mapping
set ::env(SYNTH_MUX_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/librelane/$::env(STD_CELL_LIBRARY)/mux2_map.v"

# Tri-state buffer mapping
set ::env(SYNTH_TRISTATE_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/librelane/$::env(STD_CELL_LIBRARY)/tribuff_map.v"

# --- Placement site (tech.yml: site) ----------------------------------------------
set ::env(PLACE_SITE) "core7"

# Welltap insertion (tech.yml: fills.tap + tap_distance).
set ::env(WELLTAP_CELL) "FILLTAPH7R"
set ::env(FP_TAPCELL_DIST) 15
# No endcap cells in this library; ENDCAP_CELL intentionally unset.
# see: https://github.com/openecos-projects/ecos-studio/issues/47

# --- Synthesis cells (tech.yml: sta.driving_cell, tie) --------------------------
set ::env(SYNTH_DRIVING_CELL) "INVX8H7R/Y"
set ::env(OUTPUT_CAP_LOAD) 33.5
set ::env(SYNTH_BUFFER_CELL) "BUFX4H7R/A/Y"
set ::env(SYNTH_TIEHI_CELL) "TIEHIH7R/Z"
set ::env(SYNTH_TIELO_CELL) "TIELOH7R/Z"

# --- Fill / decap / tap cells (tech.yml: fills) ---------------------------------
# tech.yml gives regular expressions; LibreLane wants shell wildcards.
set ::env(DECAP_CELLS) [list "FILLCAP*H7R"]
set ::env(FILL_CELLS) [list "FILLER*H7R"]

# Antenna diode: tech.yml fills.diode is empty -- this library has no diode
# cell. DIODE_CELL intentionally left unset; all diode insertion steps skip
# themselves when it is null.
# set ::env(DIODE_CELL) "..."

# Placement cell padding in sites. 0 matches the bring-up configuration
# (DFFRAM RAM blocks are macro-dominated; >0 is only needed for diode
# insertion flows, which are inactive as long as DIODE_CELL is unset).
set ::env(GPL_CELL_PADDING) 0
set ::env(DPL_CELL_PADDING) 0

set ::env(CELL_PAD_EXCLUDE) [list "FILLCAP*H7R" "TIEHIH7R" "TIELOH7R"]

# --- PDN -------------------------------------------------------------------------
set ::env(PDN_RAIL_WIDTH) 0.16

# --- Clock tree synthesis --------------------------------------------------------
set ::env(CTS_ROOT_BUFFER) "BUFX16H7R"
set ::env(CTS_CLK_BUFFERS) [list "BUFX4H7R" "BUFX8H7R" "BUFX16H7R"]

# --- Constraints (tech.yml: sta + bring-up configuration) ----------------------
# FIXME: These are copied from ihp.. which are copied from sky130
set ::env(MAX_FANOUT_CONSTRAINT) 10
set ::env(CLOCK_UNCERTAINTY_CONSTRAINT) 0.25
set ::env(CLOCK_TRANSITION_CONSTRAINT) 0.15
set ::env(TIME_DERATING_CONSTRAINT) 5
set ::env(IO_DELAY_CONSTRAINT) 20

# Tri-state buffers exist in the library (TBUF*H7R) but were not part of the
# bring-up configuration; uncomment if needed.
# set ::env(TRISTATE_CELLS) [list "TBUF*H7R"]

# TODO adjust threshold
# set ::env(HEURISTIC_ANTENNA_THRESHOLD) 90


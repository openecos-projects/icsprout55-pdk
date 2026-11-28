# Shared configuration of the generated standard cell libraries ics55t9 (9-track, 1.8 um) and
# ics55t7 (7-track, 1.4 um), made by stdcell-gen (stdcell_gen/README.md; installed from
# stdcell_gen/<lib> by install.sh). 1.2 V core SVT devices only. The view selection (cell LEF /
# GDS / liberty) is in the PDK config.tcl; the technology LEF is the same N551P6M_ecos.lef as
# for the vendor libraries.

if { ![regexp {^ics55t([79])$} $::env(STD_CELL_LIBRARY) -> tracks] } {
    error "ics55t_common.tcl sourced for '$::env(STD_CELL_LIBRARY)', which is not ics55t7 / ics55t9"
}

set scl_tech_dir "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/librelane/$::env(STD_CELL_LIBRARY)"

# --- Power / ground pins ----------------------------------------------------------
# The cells name their rails VDD / VSS, like the nets (stdcell-gen 779fc1d and later).
set ::env(VDD_PIN) "VDD"
set ::env(GND_PIN) "VSS"
set ::env(SCL_POWER_PINS) [list "VDD"]
set ::env(SCL_GROUND_PINS) [list "VSS"]

# --- Placement site -----------------------------------------------------------------
# Declared by the cell LEF (0.2 x cell height). Both libraries call it obssite with
# different heights: never load both in one design.
set ::env(PLACE_SITE) "obssite"

# --- Excluded cells -----------------------------------------------------------------
# Physical cells, the bus holder and the clock gates (characterized, but yosys does not infer
# them), plus the cells with a signal pin the detailed router cannot reach (test/pin_access.sh
# of stdcell-gen on the delivered LEF: ics55t9 LHSNQD2, ics55t7 8 cells; ics55t7 has no
# set+reset flip-flop, DFCSNQD1 is one of them) and three ics55t7 cells the router of a real
# design leaves a violation at.
set ::env(SYNTH_EXCLUDED_CELL_FILE) "$scl_tech_dir/synth_exclude.cells"
set ::env(PNR_EXCLUDED_CELL_FILE) "$scl_tech_dir/synth_exclude.cells"

# Latches: yosys techmap to the latch cells (stdcell-gen layout_emit/latch_map.py; the latches
# are characterized by latch_char.py). No mux / tri-state maps: yosys builds muxes from gates,
# and the tri-state buffers BUFTD* have no enable arcs.
set ::env(SYNTH_LATCH_MAP) "$scl_tech_dir/latch_map.v"

# --- Taps / ends --------------------------------------------------------------------
# The cells have no bulk contacts: TAPCELL (0.8 um) ties the wells to the rails.
# LU_S_2 needs a tap within 35 um of every source / drain.
set ::env(WELLTAP_CELL) "TAPCELL"
set ::env(FP_TAPCELL_DIST) 15
# No endcap cells: the rows end with fillers (DRC clean abutted, stdcell_gen/README.md).

# --- Synthesis cells ----------------------------------------------------------------
set ::env(SYNTH_DRIVING_CELL) "INVD8/zn"
set ::env(OUTPUT_CAP_LOAD) 33.5
set ::env(SYNTH_BUFFER_CELL) "BUFFD4/i/z"
set ::env(SYNTH_TIEHI_CELL) "TIEH/z"
set ::env(SYNTH_TIELO_CELL) "TIEL/zn"

# --- Fill / decap / diode -----------------------------------------------------------
set ::env(FILL_CELLS) [list "FILL1" "FILL2" "FILL4" "FILL8" "FILL16" "FILL32" "FILL64"]
# No decaps: OpenROAD inserts DECAP_CELLS after detailed routing without looking at the routing,
# and the DCAP* cells of ics55t7 have MET1 inside the cell, so they short to the router's MET1 in
# the gaps they fill (a 3500-cell test design, 2026-11-27: 177 MET1_S_1 / MET1_A_2 / MET1_W_1 / MET1_S_5 markers,
# all in DCAP / DCAP4 / DCAP64, and 31 Netgen LVS errors). Same reason as for the vendor 9-track
# libraries.
set ::env(DECAP_CELLS) [list]
# Antenna diode: its liberty cell (junction capacitance) is in the delivered liberty and the
# per pin antenna areas in the delivered cell LEF (stdcell-gen lef_antenna.py, the same
# areas as Magic's LEF writer)
set ::env(DIODE_CELL) "ANTENNA/i"

set ::env(GPL_CELL_PADDING) 0
set ::env(DPL_CELL_PADDING) 0
# (every pattern must match a cell: DPL-0039 otherwise)
# (LibreLane only sees "set" / "dict set" on ::env, never lappend)
if { $tracks == 7 } {
    set ::env(CELL_PAD_EXCLUDE) [list "FILL*" "TAPCELL" "TIEH" "TIEL" "DCAP*"]
} else {
    set ::env(CELL_PAD_EXCLUDE) [list "FILL*" "TAPCELL" "TIEH" "TIEL"]
}

# --- PDN ----------------------------------------------------------------------------
# MET1 rails 0.16 um high, centred on the row boundaries.
set ::env(PDN_RAIL_WIDTH) 0.16

# --- Clock tree synthesis -----------------------------------------------------------
if { $tracks == 7 } {
    set ::env(CTS_ROOT_BUFFER) "CKBD16"
    set ::env(CTS_CLK_BUFFERS) [list "CKBD4" "CKBD6" "CKBD8" "CKBD12" "CKBD16"]
} else {
    set ::env(CTS_ROOT_BUFFER) "CKBD16"
    set ::env(CTS_CLK_BUFFERS) [list "CKBD8" "CKBD12" "CKBD16"]
}

# --- Constraints --------------------------------------------------------------------
# Same values as the vendor libraries.
set ::env(MAX_FANOUT_CONSTRAINT) 10
set ::env(CLOCK_UNCERTAINTY_CONSTRAINT) 0.25
set ::env(CLOCK_TRANSITION_CONSTRAINT) 0.15
set ::env(TIME_DERATING_CONSTRAINT) 5
set ::env(IO_DELAY_CONSTRAINT) 20

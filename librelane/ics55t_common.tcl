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
# The cells name their rails vdd / vss (lower case); the nets stay VDD / VSS.
set ::env(VDD_PIN) "vdd"
set ::env(GND_PIN) "vss"
set ::env(SCL_POWER_PINS) [list "vdd"]
set ::env(SCL_GROUND_PINS) [list "vss"]

# --- Placement site -----------------------------------------------------------------
# Declared by the cell LEF (0.2 x cell height). Both libraries call it obssite with
# different heights: never load both in one design.
set ::env(PLACE_SITE) "obssite"

# --- Excluded cells -----------------------------------------------------------------
# Physical cells, the bus holder, and the latches / clock gates (not characterized, so
# not in the liberty either).
set ::env(SYNTH_EXCLUDED_CELL_FILE) "$scl_tech_dir/synth_exclude.cells"
set ::env(PNR_EXCLUDED_CELL_FILE) "$scl_tech_dir/synth_exclude.cells"

# No latch / mux / tri-state maps: there are no latches in the liberty (designs with latches
# do not synthesize yet), yosys builds muxes from gates, and the tri-state buffers BUFTD*
# have no enable arcs.

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
if { $tracks == 7 } {
    set ::env(DECAP_CELLS) [list "DCAP" "DCAP4" "DCAP8" "DCAP16" "DCAP64"]
} else {
    set ::env(DECAP_CELLS) [list]
}
# Antenna diode; its liberty (<lib>_antenna.lib) and the per pin antenna areas of the cell
# LEF (<lib>_openpdk.lef) are made by install.sh (hacking/antenna_liberty.py,
# hacking/magic/lef_antenna.py with antenna.pins)
set ::env(DIODE_CELL) "ANTENNA/i"

set ::env(GPL_CELL_PADDING) 0
set ::env(DPL_CELL_PADDING) 0
# (every pattern must match a cell: DPL-0039 otherwise)
set ::env(CELL_PAD_EXCLUDE) [list "FILL*" "TAPCELL" "TIEH" "TIEL"]
if { $tracks == 7 } {
    lappend ::env(CELL_PAD_EXCLUDE) "DCAP*"
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

# Shared configuration of the private 9-track standard cell libraries
# (ICsprout55_9T{S,H,L}VT_basic, installed from ICsprout_55LLULP1225_STD_0818).
#
# The three Vt flavours have exactly the same 719 cells and differ only in the
# cell name suffix (_9TSVT / _9THVT / _9TLVT), so each library's config.tcl
# only sources this file and everything below is derived from
# STD_CELL_LIBRARY. The view selection (cell LEF / GDS / liberty) is in the PDK
# config.tcl; the technology LEF is the same N551P6M_ecos.lef as for the public
# 7-track libraries.

if { ![regexp {^ICsprout55(_9T[A-Z]+)_basic$} $::env(STD_CELL_LIBRARY) -> sfx] } {
    error "ICsprout55_SC9T_common.tcl sourced for '$::env(STD_CELL_LIBRARY)', which is not an ICsprout55 SC9T library"
}

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

# --- Power / ground pins ----------------------------------------------------
# Every cell of these libraries also has the well bias pins VNW (nwell, on PP)
# and VPW (pwell, on NP) besides the MET1 VDD / VSS rails. They are tied to the
# rails by the well taps in the layout, so they have to join the same global
# nets or the extracted netlist (OpenROAD write_cdl -> KLayout LVS) would show
# them floating. They are not on a routing layer, so PDN never straps them.
set ::env(SCL_POWER_PINS) [list "VDD" "VNW"]
set ::env(SCL_GROUND_PINS) [list "VSS" "VPW"]

# --- Placement site --------------------------------------------------------------
# Declared by the cell LEF itself (0.2 x 1.8 um, the same geometry as the
# technology LEF's "core9").
set ::env(PLACE_SITE) "SC9T_site"

# Welltap insertion. TAPX1 ties nwell to VDD and pwell to VSS through its own
# contacts under the rails (TAPVNPWX1 is the variant with VNW / VPW brought out
# on MET1 for separate biasing and is not used here).
set ::env(WELLTAP_CELL) "TAPX1${sfx}"
set ::env(FP_TAPCELL_DIST) 15
# As in the 7-track libraries there are no endcap cells; ENDCAP_CELL is
# intentionally unset.
# see: https://github.com/openecos-projects/ecos-studio/issues/47

# --- Synthesis cells -------------------------------------------------------------
set ::env(SYNTH_DRIVING_CELL) "INVX8${sfx}/Y"
set ::env(OUTPUT_CAP_LOAD) 33.5
set ::env(SYNTH_BUFFER_CELL) "BUFX4${sfx}/A/Y"
set ::env(SYNTH_TIEHI_CELL) "TIEHIX1${sfx}/Y"
set ::env(SYNTH_TIELO_CELL) "TIELOX1${sfx}/Y"

# --- Fill / decap / tap cells ----------------------------------------------------
# NOTE: no decap cells. OpenROAD fill insertion runs after detailed routing and
# is not routing aware, and the FILLCAP* / GFILL* cells of these libraries have
# their internal nodes on MET1 (see the MET1 OBS of the FILLCAP32 cells). Inserting
# them shorts those nodes to whatever MET1 the router already put in the gap --
# found with the demo_counter LVS, where three FILLCAP32 decaps landed on the
# MET1 jogs to the output buffers. The plain FILL* cells have no devices and no
# MET1 outside the rails, so they are safe.
set ::env(DECAP_CELLS) [list]
# Listed explicitly instead of as "FILL*": that wildcard would also match the
# FILLCAP decaps and the GFILL* variants, which carry a well tie on MET1.
set ::env(FILL_CELLS) [list \
    "FILL1${sfx}" \
    "FILL2${sfx}" \
    "FILL4${sfx}" \
    "FILL8${sfx}" \
    "FILL16${sfx}" \
    "FILL32${sfx}" \
]

# Antenna diode. Unlike the 7-track libraries these do have one.
set ::env(DIODE_CELL) "ANTENNAX1${sfx}/A"

# Placement cell padding in sites, as for the 7-track libraries.
set ::env(GPL_CELL_PADDING) 0
set ::env(DPL_CELL_PADDING) 0

set ::env(CELL_PAD_EXCLUDE) [list \
    "FILL*${sfx}" \
    "GFILL*${sfx}" \
    "TAP*${sfx}" \
    "TIEHIX1${sfx}" \
    "TIELOX1${sfx}" \
    "GTIEHIX1${sfx}" \
    "GTIELOX1${sfx}" \
]

# --- PDN -------------------------------------------------------------------------
# The VDD / VSS MET1 pins are 0.3 um tall, centred on the row boundary.
set ::env(PDN_RAIL_WIDTH) 0.3

# --- Clock tree synthesis --------------------------------------------------------
# These libraries have dedicated balanced clock buffers (CLKBUF*).
set ::env(CTS_ROOT_BUFFER) "CLKBUFX16${sfx}"
set ::env(CTS_CLK_BUFFERS) [list "CLKBUFX4${sfx}" "CLKBUFX8${sfx}" "CLKBUFX16${sfx}"]

# --- Constraints -----------------------------------------------------------------
# Same values as the 7-track libraries.
set ::env(MAX_FANOUT_CONSTRAINT) 10
set ::env(CLOCK_UNCERTAINTY_CONSTRAINT) 0.25
set ::env(CLOCK_TRANSITION_CONSTRAINT) 0.15
set ::env(TIME_DERATING_CONSTRAINT) 5
set ::env(IO_DELAY_CONSTRAINT) 20

set ::env(TRISTATE_CELLS) [list "TBUF*${sfx}"]

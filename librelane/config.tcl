# icsprout55/libs.tech/librelane/config.tcl

set ::env(PROCESS) 55
set ::env(DEF_UNITS_PER_MICRON) 1000

# Standard cell library default (also settable via --scl/STD_CELL_LIBRARY)
if { ![info exist ::env(STD_CELL_LIBRARY)] } {
    set ::env(STD_CELL_LIBRARY) "ics55_LLSC_H7CR"
}

if { ![info exist ::env(PAD_CELL_LIBRARY)] } {
	set ::env(PAD_CELL_LIBRARY) "ICsprout_55LLULP1233_IO_251013"
}

# Power/ground pins
set ::env(VDD_NET) "VDD"
set ::env(GND_NET) "VSS"
set ::env(VDD_PIN) "VDD"
set ::env(GND_PIN) "VSS"

# Technology LEF, as a map of corner patterns to files.
# NOTE: the bring-up config used the plain N551P6M.lef (not the _ecos variant).
# NOTE2: The resistance in VIAs is not defined. Using a modified version here
set ::env(TECH_LEFS) [list \
    "nom_*" "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/librelane/N551P6M_ecos.lef" \
]

# Timing corners (IPVT). Corner names match the bring-up configuration exactly.
set ::env(DEFAULT_CORNER) "nom_tt_025C_1v20"
set ::env(TIMING_VIOLATION_CORNERS) "*"
set ::env(STA_CORNERS) [list \
    "nom_tt_025C_1v20" \
    "nom_ss_125C_1v08" \
    "nom_ff_n40C_1v32" \
]

# Routing layers
set ::env(RT_MIN_LAYER) "MET1"
set ::env(RT_MAX_LAYER) "MET4"

# IO pin layers (tech.yml: metal_layers.hor-layer/ver-layer)
set ::env(IO_PIN_H_LAYER) "MET3"
set ::env(IO_PIN_V_LAYER) "MET2"

# Global routing layer adjustments, one value per routing layer in the tech
# LEF (MET1..MET5, T4M2; extra layers are left unadjusted).
set ::env(GRT_LAYER_ADJUSTMENTS) [list 0.99 0 0 0 0 0]

# Primary GDSII stream-out tool. This PDK ships no magic tech file, so magic
# cannot be primary.
set ::env(PRIMARY_GDSII_STREAMOUT_TOOL) "klayout"

# ----------------------------------------------------------------------------
# Signoff tool collateral NOT shipped with this PDK.
# ... but we will do our best!
# ----------------------------------------------------------------------------
## magic setup
set ::env(MAGICRC) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/magic/ics55.magicrc"
set ::env(MAGIC_TECH) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/magic/ics55.tech"
set ::env(MAGIC_PDK_SETUP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/magic/ics55.tcl"

# Klayout setup
set ::env(KLAYOUT_TECH) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/klayout/tech/ics55.lyt"
set ::env(KLAYOUT_PROPERTIES) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/klayout/tech/ics55.lyp"
set ::env(KLAYOUT_DEF_LAYER_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/klayout/tech/ics55.map"
set ::env(KLAYOUT_DRC_RUNSET) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/klayout/tech/ics55.drc"
set ::env(KLAYOUT_DRC_OPTIONS) [dict create densityRules 0 ]
set ::env(KLAYOUT_LVS_SCRIPT) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/klayout/tech/ics55.lvs"
# Run by the ICS55.KLayoutLVS step of the PDK plugin (libs.tech/librelane/librelane_plugin_ics55)
# No tapless / implicit_nets here: in a placed design FILLTAP ties the wells and
# substrate, and pins shorted in every instance (split IO rails, cell wells) are
# joined by the runset itself. Forcing them would hide missing taps.
set ::env(KLAYOUT_LVS_OPTIONS) [dict create run_mode deep ]

set ::env(NETGEN_SETUP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/netgen/ics55.tcl"
    
# TODO: This is the only file that is left to implement for RCX
# the one put here is just a copy of IHP. Obviously it won't work.
# REPLACE ME REPLACE ME REPLACE ME
set ::env(RCX_RULESETS) [list \
    "nom_*" "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/librelane/$::env(STD_CELL_LIBRARY)/rcx.rules" \
]

set scl_dir "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)"
set io_dir "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(PAD_CELL_LIBRARY)"

# SCL-specific power/ground pins
set ::env(SCL_POWER_PINS) [list "VDD"]
set ::env(SCL_GROUND_PINS) [list "VSS"]

# --- Views ------------------------------------------------------------------
# Two standard cell families live in this PDK and they ship different view
# sets, so the cell LEF / GDS pair (and the liberty file names below) are
# picked per library. The technology LEF above is the same for both.
#
#   ics55_LLSC_H7C{R,H,L}  7-track public libraries (icsprout55-pdk submodule)
#   ICsprout55_9T{S,H,L}VT_basic  9-track private libraries, installed from
#                          ICsprout_55LLULP1225_STD_0818 by install.sh
#
# scl_lef / scl_gds are the cell views and scl_lib_{tt,ss,ff} the liberty file
# of each STA corner; they are used by LIB further down.
if { [regexp {^ICsprout55_9T[A-Z]+_basic$} $::env(STD_CELL_LIBRARY)] } {
    # The private libraries have a single cell LEF / GDS pair with the signal
    # pins on MET1, so there is no _ecos / _M2 split to worry about here.
    set scl_lef "$scl_dir/lef/$::env(STD_CELL_LIBRARY).lef"
    set scl_gds "$scl_dir/gds/$::env(STD_CELL_LIBRARY).gds"
    # Liberty files are named after the library without the "_basic" suffix,
    # which comes back after the corner: ICsprout55_9TSVT_tt_v1p2_25c_basic_nldm.lib
    set lib_base [regsub {_basic$} $::env(STD_CELL_LIBRARY) ""]
    set scl_lib_tt "$scl_dir/liberty/${lib_base}_tt_v1p2_25c_basic_nldm.lib"
    set scl_lib_ss "$scl_dir/liberty/${lib_base}_ss_v1p08_125c_basic_nldm.lib"
    set scl_lib_ff "$scl_dir/liberty/${lib_base}_ff_v1p32_-40c_basic_nldm.lib"
} else {
    # The bring-up configuration used the "_ecos" cell LEF with the plain
    # (non-ecos) tech LEF; keep that proven combination.
    set scl_lef "$scl_dir/lef/$::env(STD_CELL_LIBRARY)_ecos.lef"
    # The _ecos cell LEF has the signal pins on MET2 (+ VIA1); the matching
    # layout is the _M2 GDS. The plain GDS only has MET1 pins, so routing to
    # the MET2 pin shapes would leave every signal pin open (found by KLayout
    # LVS).
    set scl_gds "$scl_dir/gds/$::env(STD_CELL_LIBRARY)_M2.gds"
    set scl_lib_tt "$scl_dir/liberty/$::env(STD_CELL_LIBRARY)_typ_tt_1p2_25_nldm.lib"
    set scl_lib_ss "$scl_dir/liberty/$::env(STD_CELL_LIBRARY)_ss_rcworst_1p08_125_nldm.lib"
    set scl_lib_ff "$scl_dir/liberty/$::env(STD_CELL_LIBRARY)_ff_rcbest_1p32_m40_nldm.lib"
}

# Standard cells
set ::env(CELL_LEFS) [list "$scl_lef"]
set ::env(CELL_GDS) [list "$scl_gds"]
set ::env(CELL_VERILOG_MODELS) [list "$scl_dir/verilog/$::env(STD_CELL_LIBRARY).v"]
set ::env(CELL_SPICE_MODELS) [list "$scl_dir/cdl/$::env(STD_CELL_LIBRARY).cdl"]
set ::env(CELL_CDLS) [list "$scl_dir/cdl/$::env(STD_CELL_LIBRARY).cdl"]

# The _openpdk LEF is the vendor _ecos one with the pad terminals moved to RDL
set ::env(PAD_LEFS) "$io_dir/lef/ICSIOA_N55_3P3_1P6M1TM_openpdk.lef"
set ::env(PAD_GDS) "$io_dir/gds/ICSIOA_N55_3P3_1P6M1TM.gds"
set ::env(PAD_VERILOG_MODELS) "$io_dir/verilog/icsIOA_N55_3P3.v"
set ::env(PAD_SPICE_MODELS) "$io_dir/cdl/ICSIOA_N55_3P3.cdl"
set ::env(PAD_CDLS) "$io_dir/cdl/ICSIOA_N55_3P3.cdl"

# --- Timing libraries (tech.yml: sta.libs) ------------------------------------
# Exactly one entry must match DEFAULT_CORNER (nom_tt_025C_1v20).
# Also, we only include one lib file for the standard cells.
set ::env(LIB) [dict create]
dict set ::env(LIB) "nom_tt_025C_1v20" "\
    $scl_lib_tt\
    $io_dir/liberty/ICSIOA_N55_3P3_tt_1p2_3p3_25c.lib\
"
dict set ::env(LIB) "nom_ss_125C_1v08" "\
    $scl_lib_ss\
    $io_dir/liberty/ICSIOA_N55_3P3_ss_1p08_2p97_125c.lib\
"
dict set ::env(LIB) "nom_ff_n40C_1v32" "\
    $scl_lib_ff\
    $io_dir/liberty/ICSIOA_N55_3P3_ff_1p32_3p63_m40c.lib\
"

# --- Excluded cells ------------------------------------------------------------
# Defaults (no exclusions). /dev/null satisfies the required-Path check and reads empty.
# The 7-track standard cell configs (ics55_LLSC_H7C_common.tcl) point them to their
# exclude lists; the 9-track libraries have no exclusions.
set ::env(SYNTH_EXCLUDED_CELL_FILE) "/dev/null"
set ::env(PNR_EXCLUDED_CELL_FILE) "/dev/null"

# --- Tracks -----------------------------------------------------------------------
# Explicit track grid (pitch/offset from the tech LEF), copied from the
# bring-up configuration.
set ::env(FP_TRACKS_INFO) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/librelane/$::env(STD_CELL_LIBRARY)/tracks.info"

# directions (MET4 VERTICAL, MET5 HORIZONTAL).
set ::env(PDN_MULTILAYER) 1
set ::env(PDN_RAIL_LAYER) "MET1"
set ::env(PDN_RAIL_OFFSET) 0.0

set ::env(PDN_VERTICAL_LAYER) "MET4"
set ::env(PDN_HORIZONTAL_LAYER) "MET5"

set ::env(PDN_VWIDTH) 1
set ::env(PDN_VSPACING) 1.0
set ::env(PDN_VPITCH) 16
set ::env(PDN_VOFFSET) 0.5

set ::env(PDN_HWIDTH) 1
set ::env(PDN_HSPACING) 1.0
set ::env(PDN_HPITCH) 16
set ::env(PDN_HOFFSET) 0.5

# PDN core ring (disabled; parameters kept from the bring-up configuration).
set ::env(PDN_CORE_RING) 0
set ::env(PDN_CORE_RING_VWIDTH) 3.1
set ::env(PDN_CORE_RING_HWIDTH) 3.1
set ::env(PDN_CORE_RING_VSPACING) 1.7
set ::env(PDN_CORE_RING_HSPACING) 1.7
set ::env(PDN_CORE_RING_VOFFSET) 12.45
set ::env(PDN_CORE_RING_HOFFSET) 12.45

# PDN Macro blockages list
set ::env(MACRO_BLOCKAGES_LAYER) "MET1 MET2 MET3 MET4 MET5"

# TODO: LAYERS_RC and VIAS_R are not defined!

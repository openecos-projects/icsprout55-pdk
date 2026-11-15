# LibreLane configuration of the ics55t9 standard cells: a DRAFT made by
# layout_emit/create_deliverable.py from the cell list, not run through LibreLane yet.
# Set STD_CELL_LIBRARY to this library and put libs.ref/<lib> next to the vendor ones.

set ::env(PLACE_SITE) "obssite"

# Taps: the cells have no bulk contacts (tapless), TAPCELL connects the wells
set ::env(WELLTAP_CELL) "TAPCELL"
set ::env(FP_TAPCELL_DIST) 15

set ::env(SYNTH_DRIVING_CELL) "INVD8/zn"
set ::env(SYNTH_BUFFER_CELL) "BUFFD4/i/z"
set ::env(SYNTH_TIEHI_CELL) "TIEH/z"
set ::env(SYNTH_TIELO_CELL) "TIEL/zn"

set ::env(FILL_CELLS) [list "FILL*"]
set ::env(DIODE_CELL) "ANTENNA/i"
set ::env(CELL_PAD_EXCLUDE) [list "TIEH" "TIEL"]

set ::env(PDN_RAIL_WIDTH) 0.16
set ::env(CTS_ROOT_BUFFER) "CKBD16"
set ::env(CTS_CLK_BUFFERS) [list "CKBD8" "CKBD12" "CKBD16"]

# Cells without a logic function (see synth_exclude.cells)
set ::env(SYNTH_EXCLUDE_CELLS) [list "ANTENNA" "BHD" "FILL1" "FILL2" "FILL4" "FILL8" "FILL16" "FILL32" "FILL64" "TAPCELL"]

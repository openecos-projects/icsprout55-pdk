set current_folder [file dirname [file normalize [info script]]]

# Pad IO sites
set ::env(PAD_SITE_NAME) "IOSite"
set ::env(PAD_CORNER_SITE_NAME) "IOCorner"

# Set IO pad information
set ::env(PAD_CELLS) [dict create]
dict set ::env(PAD_CELLS) "P65_1233_PBMUX" "65, 130"
dict set ::env(PAD_CELLS) "P65_1233_PWE" "130, 130"
dict set ::env(PAD_CELLS) "P65_1233_V*" "65, 130"
dict set ::env(PAD_CELLS) "P65_1233_PAR*" "65, 130"
dict set ::env(PAD_CELLS) "P65_1233_CUT" "65, 130"
set ::env(PAD_CORNER) "P65_1233_CORNER"
set ::env(PAD_FILLERS) "\
    P65_1233_FILLER0005\
    P65_1233_FILLER001\
    P65_1233_FILLER01\
    P65_1233_FILLER1\
    P65_1233_FILLER2\
    P65_1233_FILLER5\
    P65_1233_FILLER10\
    P65_1233_FILLER20\
    P65_1233_FILLER50\
"

# Pad bondpad information (if needed)
# The bonds are actually inside of the IO
set ::env(PAD_BONDPAD_NAME) ""
set ::env(PAD_BONDPAD_WIDTH) "10"
set ::env(PAD_BONDPAD_HEIGHT) "10"
set ::env(PAD_BONDPAD_OFFSETS) [dict create]
#dict set ::env(PAD_BONDPAD_OFFSETS) "P65_1233_PBMUX" "10.0, 10.0"
#dict set ::env(PAD_BONDPAD_OFFSETS) "P65_1233_PWE" "10.0, 10.0"
#dict set ::env(PAD_BONDPAD_OFFSETS) "P65_1233_V*" "10.0, 10.0"
#dict set ::env(PAD_BONDPAD_OFFSETS) "P65_1233_PAR*" "10.0, 10.0"

# Pad io terminals
set ::env(PAD_PLACE_IO_TERMINALS) [list \
    P65_1233_PAR/PAD \
    P65_1233_PAR_5/PAD \
    P65_1233_PBMUX/PAD \
    P65_1233_PWE/XIN \
    P65_1233_PWE/XOUT \
    P65_1233_VDD1/VDD1 \
    P65_1233_VDD1A/VDDA1 \
    P65_1233_VDDIO3/VDDIO \
    P65_1233_VSS1A/VSSA \
    P65_1233_VSS1/VSS1 \
    P65_1233_VSSIO3/VSSIO \
]

# NOTE: These ones are excluded on purpose. It damages the VDD connectivity step
set ::env(EXCLUDED_PAD_PLACE_IO_TERMINALS) [list \
    P65_1233_VDD3/VDD \
    P65_1233_VSS3/VSS \
]

# Sealring offset
# NOTE: Sealring is included in the IO as well
set ::env(PAD_EDGE_SPACING) "0"

# set ::env(KLAYOUT_SEALRING_SCRIPT) "/dev/null"

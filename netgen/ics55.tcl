permute default
property default
property parallel none

# Allow override of default #columns in the output format.
catch {format $env(NETGEN_COLUMNS)}

#---------------------------------------------------------------
# For the following, get the cell lists from
# circuit1 and circuit2.
#---------------------------------------------------------------

set cells1 [cells list -all -circuit1]
set cells2 [cells list -all -circuit2]

# EMPTY AND EXIT

puts "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

set fileId [open "reports/lvs.netgen.json" w]
puts $fileId "{}"
close $fileId

exit 0

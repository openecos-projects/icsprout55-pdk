# Top-level terminals for the core supplies of a padded chip.
#
# In the LibreLane Chip flow the nets of VDD_NETS / GND_NETS are no ports of
# the netlist, so the padring step gives them no bond pad terminal (IOVDD /
# IOVSS, which are ports, get one). OpenROAD PSM then finds no source on them:
# check_power_grid fails with PSM-0025 and Checker.PowerGridViolations counts
# one violation per net. ics55_pad_supply_terminals creates, for each net, a
# BTerm of the same name with one pin on the bond pad (RDL shape of the supply
# pin) of every power pad on that net, like the padring does for IOVDD.
#
# Source this file from the PDN_CFG script (OpenROAD.GeneratePDN, before
# pdngen) and call
#     ics55_pad_supply_terminals "$::env(VDD_NETS) $::env(GND_NETS)"

proc ics55_pad_supply_terminals {nets {layer_name RDL}} {
    set block [ord::get_db_block]
    foreach net_name $nets {
        set net [$block findNet $net_name]
        if {$net == "NULL"} {
            continue
        }
        set bterm [$block findBTerm $net_name]
        if {$bterm != "NULL" && [llength [$bterm getBPins]] > 0} {
            continue
        }
        set npins 0
        foreach iterm [$net getITerms] {
            set inst [$iterm getInst]
            if {![[$inst getMaster] isPad]} {
                continue
            }
            foreach geom [$iterm getGeometries] {
                lassign $geom layer rect
                if {[$layer getName] ne $layer_name} {
                    continue
                }
                if {$bterm == "NULL"} {
                    set bterm [odb::dbBTerm_create $net $net_name]
                    $bterm setSigType [$net getSigType]
                    $bterm setIoType INOUT
                    $bterm setSpecial
                }
                set bpin [odb::dbBPin_create $bterm]
                odb::dbBox_create $bpin $layer [$rect xMin] [$rect yMin] [$rect xMax] [$rect yMax]
                $bpin setPlacementStatus FIRM
                incr npins
            }
        }
        if {$npins > 0} {
            puts "\[INFO\] Supply terminal $net_name: $npins bond pad pin(s) on $layer_name."
        } else {
            puts "\[WARNING\] Supply terminal $net_name: no pad with a $layer_name bond pad on this net."
        }
    }
}

# Copyright 2026 Ckristian Duran
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ICS55.TapEndcapInsertion: endcaps at both ends of every row, the top and bottom
# row of every row block filled with ENDCAP_HORIZONTAL_CELLS (boundary rows),
# then the well taps. The rows are already cut around macros (OpenROAD.CutRows,
# FP_MACRO_*_HALO), so place_endcaps also closes the rows next to macros.
source $::env(SCRIPTS_DIR)/openroad/common/io.tcl
read_current_odb

set endcap_args [list -endcap_horizontal $::env(ENDCAP_HORIZONTAL_CELLS)]
append_if_exists_argument endcap_args ENDCAP_CELL -endcap
log_cmd place_endcaps {*}$endcap_args

if { [info exists ::env(WELLTAP_CELL)] } {
    log_cmd place_tapcells -master $::env(WELLTAP_CELL) -distance $::env(FP_TAPCELL_DIST)
}

write_views

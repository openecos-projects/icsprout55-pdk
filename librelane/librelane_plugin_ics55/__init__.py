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
"""LibreLane plugin for the ICS55 (icsprout55) PDK.

LibreLane discovers every importable module named ``librelane_plugin_*``, so
adding ``$PDK_ROOT/$PDK/libs.tech/librelane`` to ``PYTHONPATH`` is enough.

Steps:
  ICS55.KLayoutLVS  KLayout LVS with the PDK runset (KLAYOUT_LVS_SCRIPT).
                    LibreLane's KLayout.LVS only runs for the IHP PDKs; the
                    invocation itself is PDK independent (GDS + the design CDL
                    merged with CELL_CDLS / EXTRA_CDLS / PAD_CDLS, options from
                    KLAYOUT_LVS_OPTIONS), so this step reuses it as is.

Use it in place of Netgen.LVS, after OpenROAD.WriteCDL:
  meta:
    substituting_steps:
      "-Netgen.LVS": OpenROAD.WriteCDL
      Netgen.LVS: ICS55.KLayoutLVS

or next to it (Magic extraction + Netgen LVS, then KLayout LVS, one Checker.LVS):
  meta:
    substituting_steps:
      "-Netgen.LVS": OpenROAD.WriteCDL
      "+Netgen.LVS": ICS55.KLayoutLVS

The step adds its error count to a design__lvs_error__count that an earlier LVS
step (Netgen) left in the state, so Checker.LVS fails if either run fails; its
own result is also kept as design__lvs_error__count__klayout. An existing SPICE
view (the Magic extraction) is not replaced by the KLayout netlist.

  ICS55.TapEndcapInsertion  OpenROAD.TapEndcapInsertion plus boundary rows: the
                    top and bottom row of every row block are filled with
                    ENDCAP_HORIZONTAL_CELLS (OpenROAD place_endcaps
                    -endcap_horizontal), ENDCAP_CELL goes to both ends of the
                    other rows, then the well taps. The 7-track cells need it:
                    NP / PP extend past the cell top / bottom and are only
                    complete with a row across (NP_EN_3 / PP_EN_3 on a cell in
                    the outer rows). Without ENDCAP_HORIZONTAL_CELLS it is
                    OpenROAD.TapEndcapInsertion unchanged.

  meta:
    substituting_steps:
      OpenROAD.TapEndcapInsertion: ICS55.TapEndcapInsertion
"""

import os
from typing import List, Optional

from librelane.config import Variable
from librelane.state import DesignFormat
from librelane.steps import Step
from librelane.steps.klayout import LVS as KLayoutLVS
from librelane.steps.openroad import TapEndcapInsertion


@Step.factory.register()
class ICS55KLayoutLVS(KLayoutLVS):
    """
    Layout vs. schematic with KLayout and the ICS55 LVS runset.
    """

    id = "ICS55.KLayoutLVS"
    name = "Layout Versus Schematic (KLayout, ICS55)"

    def run(self, state_in, **kwargs):
        views, metrics = self.run_ihp_sg13g2(state_in, **kwargs)
        own = metrics.get("design__lvs_error__count", 0)
        before = state_in.metrics.get("design__lvs_error__count")
        metrics["design__lvs_error__count__klayout"] = own
        if before is not None:
            metrics["design__lvs_error__count"] = int(before) + int(own)
        if state_in.get(DesignFormat.SPICE) is not None:
            views.pop(DesignFormat.SPICE, None)
        return views, metrics


@Step.factory.register()
class ICS55TapEndcapInsertion(TapEndcapInsertion):
    """
    Places endcap cells at both ends of every row, fills the top and bottom row
    of every row block with boundary cells, then places the welltap cells.
    """

    id = "ICS55.TapEndcapInsertion"
    name = "Tap / Endcap / Boundary Row Insertion (ICS55)"

    config_vars = TapEndcapInsertion.config_vars + [
        Variable(
            "ENDCAP_HORIZONTAL_CELLS",
            Optional[List[str]],
            "Cells that fill the top and bottom row of every row block (OpenROAD "
            "place_endcaps -endcap_horizontal), widest first. If unset, the step is "
            "OpenROAD.TapEndcapInsertion.",
            pdk=True,
        ),
    ]

    def get_script_path(self):
        if self.config["ENDCAP_HORIZONTAL_CELLS"]:
            return os.path.join(os.path.dirname(__file__), "scripts", "tapcell_boundary.tcl")
        return super().get_script_path()

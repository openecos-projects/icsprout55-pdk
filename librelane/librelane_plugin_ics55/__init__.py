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
"""

from librelane.steps import Step
from librelane.steps.klayout import LVS as KLayoutLVS


@Step.factory.register()
class ICS55KLayoutLVS(KLayoutLVS):
    """
    Layout vs. schematic with KLayout and the ICS55 LVS runset.
    """

    id = "ICS55.KLayoutLVS"
    name = "Layout Versus Schematic (KLayout, ICS55)"

    def run(self, state_in, **kwargs):
        return self.run_ihp_sg13g2(state_in, **kwargs)

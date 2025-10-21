/*
 * Copyright 2025 ICsprout Integrated Circuit Co., Ltd.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

`celldefine
`timescale 1 ns / 10 ps

module P65_1233_CUT (VDD, VSS, VDDA, VDDIO, VSSA, VSSIO);
inout VDD;
inout VSS;
inout VDDA;
inout VDDIO;
inout VSSA;
inout VSSIO;

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule
`endcelldefine

`timescale 1ns/1ps
`celldefine
module P65_1233_VDD1 (VDD1, VDDIO, VSSIO);
	 inout VDD1;
         inout VDDIO;
         inout VSSIO;
endmodule
`endcelldefine


`timescale 1ns/1ps
`celldefine
module P65_1233_VDD3 (VDD, VDDIO, VSS, VSSIO);
	 inout VDD;
	 inout VSSIO;
	 inout VSS;
	 inout VDDIO;
endmodule
`endcelldefine

`timescale 1ns/1ps
`celldefine
module P65_1233_VSS1 (VSS1, VDD, VDDIO, VSS, VSSIO);
	 inout VSS1;
	 inout VSS;
	 inout VDD;
	 inout VSSIO;
	 inout VDDIO;
endmodule
`endcelldefine

`celldefine
`timescale 1 ns / 10 ps

module P65_1233_VSS3 (VSS, VDD, VDDIO, VSSIO);
	 inout VDD;
	 inout VDDIO;
	 inout VSSIO;
	 inout VSS;
endmodule

`endcelldefine



`timescale 1ns/1ps
`celldefine
module P65_1233_VDDIO3 (VDDIO);
	 inout VDDIO;
endmodule
`endcelldefine


`timescale 1ns/1ps
`celldefine
module P65_1233_VSSIO3 (VSSIO, VDD, VDDIO, VSS);
	 inout VSSIO;
	 inout VDD;
	 inout VDDIO;
	 inout VSS;
endmodule
`endcelldefine

`timescale 1ns/1ps
`celldefine
module P65_1233_VDD1A (VDDA1, VDD, VDDA, VSS, VSSA);
	 inout VDDA1;
	 inout VSS;
	 inout VSSA;
	 inout VDD;
	 inout VDDA;
endmodule
`endcelldefine


`timescale 1ns/1ps
`celldefine
module P65_1233_VSS1A (VSSA, VDDA);
	 inout VSSA;
         inout VDDA;
endmodule
`endcelldefine




`timescale 1ns/1ps
`celldefine
module P65_1233_PWE (E, XIN, XOUT, XC, VDD, VDDIO, VSS, VSSIO);
input E;
input XIN;
output XOUT;
output XC;
inout VDD, VDDIO, VSS, VSSIO;
nand U0 (XOUT, E, XIN);
and U1 (XC, XIN, E);

specify
(XIN -=> XOUT)=(0, 0);
(E -=> XOUT)=(0, 0);
(XIN +=> XC)=(0, 0);
(E +=> XC)=(0, 0);
endspecify
endmodule
`endcelldefine

`timescale 1 ns / 1 ps
`celldefine
module P65_1233_PBMUX (C, A, PAD, IE, CS, I, OE, OD, PU, PD, DS0, DS1, VDD, VDDIO, VSS, VSSIO);
  output C;
  inout A;
  inout PAD;
  input IE;
  input CS;
  input I;
  input OE;
  input OD;
  input PU;
  input PD;
  input DS0;
  input DS1;
  inout VDD, VDDIO, VSS, VSSIO;
  bufif1 (weak0, weak1) (PAD_I, 1'b1, PU);
  bufif1 (weak0, weak1) (PAD_I, 1'b0, PD);

  buf  (C, C0);
  and  (C0, C_BUF, IE);
  pmos (C_BUF, PAD, 1'b0);

  not  (OE_N, OE);
  not  (OD_N, OD);
  nand (DATA_P, OD_N, OE, I);
  nor  (DATA_N, OE_N, I);
  pmos (PAD_O, 1'b1, DATA_P);
  nmos (PAD_O, 1'b0, DATA_N);

  pmos (PAD, PAD_O, 1'b0);
  pmos (PAD, PAD_I, 1'b0);
  rtran (A, PAD);

  pmos (DS0_tmp, DS0, 1'b0);
  pmos (DS1_tmp, DS1, 1'b0);
  pmos (CS_tmp, CS, 1'b0);

  specify
    if ((DS1 == 1'b0)&&(DS0 == 1'b0)) (I => PAD)=(0, 0);
    if ((DS1 == 1'b0)&&(DS0 == 1'b1)) (I => PAD)=(0, 0);
    if ((DS1 == 1'b1)&&(DS0 == 1'b0)) (I => PAD)=(0, 0);
    if ((DS1 == 1'b1)&&(DS0 == 1'b1)) (I => PAD)=(0, 0);
    if (CS == 1'b0) (PAD => C) = (0, 0);
    if (CS == 1'b1) (PAD => C) = (0, 0);
    (OE => PAD) = (0, 0, 0, 0, 0, 0);
    (IE => C) = (0, 0);
  endspecify
endmodule
`endcelldefine

`timescale 1 ns / 1 ps
`celldefine
module P65_1233_PAR (A, PAD, VDDA, VSSA, VDD ,VSS);
  inout A;
  inout VDDA, VSSA;
  inout VDD, VSS;
  inout PAD;
  rtran (PAD,A);
endmodule
`endcelldefine

`timescale 1 ns / 1 ps
`celldefine
module P65_1233_PAR_5 (A, PAD, VDDA, VSSA, VDD, VSS);
  inout A;
  inout VDDA, VSSA;
  inout VDD, VSS;
  inout PAD;
  tran (PAD,A);
endmodule
`endcelldefine


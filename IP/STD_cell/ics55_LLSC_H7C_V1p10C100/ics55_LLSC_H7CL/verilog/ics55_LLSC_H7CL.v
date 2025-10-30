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

//time:2024/5/18
// this version is 0p01
//

`timescale 1ns/1ps
`celldefine
module ANT2H7L ( A);
inout A;

   `ifdef functional  //  functional //

   `else


   specify

   endspecify

  `endif // functional //

endmodule
`endcelldefine

`timescale 1ns/1ps
`celldefine
module ANT4H7L ( A);
inout A;

   `ifdef functional  //  functional //

   `else


   specify

   endspecify

  `endif // functional //

endmodule
`endcelldefine

`timescale 1ns/1ps
`celldefine
module TIEHIH7L ( Z);
output Z;

	assign Z = 1'b1;

   `ifdef functional  //  functional //

   `else

   specify

   endspecify

  `endif // functional //
endmodule
`endcelldefine

`timescale 1ns/1ps
`celldefine
module TIELOH7L ( Z);
output Z;

	assign Z = 1'b0;

   `ifdef functional  //  functional //

   `else

   specify

   endspecify

  `endif // functional //
endmodule
`endcelldefine

`timescale 1ns/1ps
`celldefine
module ADDFX1H7L (CO, S, A, B, CI);
output S, CO;
input A, B, CI;
  xor I0(S, A, B, CI);
  and I1(a_and_b, A, B);
  and I2(a_and_ci, A, CI);
  and I3(b_and_ci, B, CI);
  or I4(CO, a_and_b, a_and_ci, b_and_ci);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && CI==1'b1)
(A => CO) = (1.0,1.0);
if (B==1'b1 && CI==1'b0)
(A => CO) = (1.0,1.0);
if (A==1'b0 && CI==1'b1)
(B => CO) = (1.0,1.0);
if (A==1'b1 && CI==1'b0)
(B => CO) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(CI => CO) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(CI => CO) = (1.0,1.0);
if (B==1'b0 && CI==1'b1)
(A => S) = (1.0,1.0);
if (B==1'b1 && CI==1'b0)
(A => S) = (1.0,1.0);
if (B==1'b0 && CI==1'b0)
(A => S) = (1.0,1.0);
if (B==1'b1 && CI==1'b1)
(A => S) = (1.0,1.0);
if (A==1'b0 && CI==1'b1)
(B => S) = (1.0,1.0);
if (A==1'b1 && CI==1'b0)
(B => S) = (1.0,1.0);
if (A==1'b0 && CI==1'b0)
(B => S) = (1.0,1.0);
if (A==1'b1 && CI==1'b1)
(B => S) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(CI => S) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(CI => S) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(CI => S) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(CI => S) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //ADDFX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ADDFX1P4H7L (CO, S, A, B, CI);
output S, CO;
input A, B, CI;
  xor I0(S, A, B, CI);
  and I1(a_and_b, A, B);
  and I2(a_and_ci, A, CI);
  and I3(b_and_ci, B, CI);
  or I4(CO, a_and_b, a_and_ci, b_and_ci);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && CI==1'b1)
(A => CO) = (1.0,1.0);
if (B==1'b1 && CI==1'b0)
(A => CO) = (1.0,1.0);
if (A==1'b0 && CI==1'b1)
(B => CO) = (1.0,1.0);
if (A==1'b1 && CI==1'b0)
(B => CO) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(CI => CO) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(CI => CO) = (1.0,1.0);
if (B==1'b0 && CI==1'b1)
(A => S) = (1.0,1.0);
if (B==1'b1 && CI==1'b0)
(A => S) = (1.0,1.0);
if (B==1'b0 && CI==1'b0)
(A => S) = (1.0,1.0);
if (B==1'b1 && CI==1'b1)
(A => S) = (1.0,1.0);
if (A==1'b0 && CI==1'b1)
(B => S) = (1.0,1.0);
if (A==1'b1 && CI==1'b0)
(B => S) = (1.0,1.0);
if (A==1'b0 && CI==1'b0)
(B => S) = (1.0,1.0);
if (A==1'b1 && CI==1'b1)
(B => S) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(CI => S) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(CI => S) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(CI => S) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(CI => S) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //ADDFX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ADDFX2H7L (CO, S, A, B, CI);
output S, CO;
input A, B, CI;
  xor I0(S, A, B, CI);
  and I1(a_and_b, A, B);
  and I2(a_and_ci, A, CI);
  and I3(b_and_ci, B, CI);
  or I4(CO, a_and_b, a_and_ci, b_and_ci);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && CI==1'b1)
(A => CO) = (1.0,1.0);
if (B==1'b1 && CI==1'b0)
(A => CO) = (1.0,1.0);
if (A==1'b0 && CI==1'b1)
(B => CO) = (1.0,1.0);
if (A==1'b1 && CI==1'b0)
(B => CO) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(CI => CO) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(CI => CO) = (1.0,1.0);
if (B==1'b0 && CI==1'b1)
(A => S) = (1.0,1.0);
if (B==1'b1 && CI==1'b0)
(A => S) = (1.0,1.0);
if (B==1'b0 && CI==1'b0)
(A => S) = (1.0,1.0);
if (B==1'b1 && CI==1'b1)
(A => S) = (1.0,1.0);
if (A==1'b0 && CI==1'b1)
(B => S) = (1.0,1.0);
if (A==1'b1 && CI==1'b0)
(B => S) = (1.0,1.0);
if (A==1'b0 && CI==1'b0)
(B => S) = (1.0,1.0);
if (A==1'b1 && CI==1'b1)
(B => S) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(CI => S) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(CI => S) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(CI => S) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(CI => S) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //ADDFX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ADDHX1H7L (CO, S, A, B);
output S, CO;
input A, B;
  xor I0(S, A, B);
  and I1(CO, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => CO) = (1.0,1.0);
if (A==1'b1)
(B => CO) = (1.0,1.0);
if (B==1'b1)
(A => S) = (1.0,1.0);
if (B==1'b0)
(A => S) = (1.0,1.0);
if (A==1'b1)
(B => S) = (1.0,1.0);
if (A==1'b0)
(B => S) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //ADDHX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ADDHX1P4H7L (CO, S, A, B);
output S, CO;
input A, B;
  xor I0(S, A, B);
  and I1(CO, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => CO) = (1.0,1.0);
if (A==1'b1)
(B => CO) = (1.0,1.0);
if (B==1'b1)
(A => S) = (1.0,1.0);
if (B==1'b0)
(A => S) = (1.0,1.0);
if (A==1'b1)
(B => S) = (1.0,1.0);
if (A==1'b0)
(B => S) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //ADDHX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ADDHX2H7L (CO, S, A, B);
output S, CO;
input A, B;
  xor I0(S, A, B);
  and I1(CO, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => CO) = (1.0,1.0);
if (A==1'b1)
(B => CO) = (1.0,1.0);
if (B==1'b1)
(A => S) = (1.0,1.0);
if (B==1'b0)
(A => S) = (1.0,1.0);
if (A==1'b1)
(B => S) = (1.0,1.0);
if (A==1'b0)
(B => S) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //ADDHX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND2X0P5H7L (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND2X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND2X0P7H7L (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND2X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND2X12H7L (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND2X12H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND2X16H7L (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND2X16H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND2X1H7L (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND2X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND2X1P4H7L (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND2X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND2X2H7L (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND2X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND2X3H7L (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND2X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND2X4H7L (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND2X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND2X6H7L (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND2X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND2X8H7L (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND2X8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND3X0P5H7L (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND3X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND3X0P7H7L (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND3X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND3X1H7L (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND3X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND3X1P4H7L (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND3X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND3X2H7L (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND3X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND3X3H7L (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND3X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND3X4H7L (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND3X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND3X6H7L (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND3X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND3X8H7L (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND3X8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND4X0P5H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  and (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND4X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND4X0P7H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  and (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND4X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND4X1H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  and (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND4X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND4X1P4H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  and (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND4X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND4X2H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  and (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND4X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND4X3H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  and (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND4X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND4X4H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  and (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND4X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AND4X6H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  and (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //

endmodule //AND4X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO211X0P5H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;


    and I0(OUT0, A0, A1);
    or I1(Y, B0, C0, OUT0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO211X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO211X0P7H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;


    and I0(OUT0, A0, A1);
    or I1(Y, B0, C0, OUT0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO211X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO211X1H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;


    and I0(OUT0, A0, A1);
    or I1(Y, B0, C0, OUT0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO211X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO211X1P4H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;


    and I0(OUT0, A0, A1);
    or I1(Y, B0, C0, OUT0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO211X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO211X2H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;


    and I0(OUT0, A0, A1);
    or I1(Y, B0, C0, OUT0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO211X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO211X3H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;


    and I0(OUT0, A0, A1);
    or I1(Y, B0, C0, OUT0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO211X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO211X4H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;


    and I0(OUT0, A0, A1);
    or I1(Y, B0, C0, OUT0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO211X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO211X6H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;


    and I0(OUT0, A0, A1);
    or I1(Y, B0, C0, OUT0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO211X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO21X0P5H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  and I0(outA, A0, A1);
  or I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO21X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO21X0P7H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  and I0(outA, A0, A1);
  or I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO21X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO21X1H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  and I0(outA, A0, A1);
  or I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO21X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO21X1P4H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  and I0(outA, A0, A1);
  or I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO21X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO21X2H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  and I0(outA, A0, A1);
  or I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO21X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO21X3H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  and I0(outA, A0, A1);
  or I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO21X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO21X4H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  and I0(outA, A0, A1);
  or I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO21X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO21X6H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  and I0(outA, A0, A1);
  or I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO21X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO21X8H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  and I0(outA, A0, A1);
  or I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO21X8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO221X0P5H7L ( Y, A0, A1, B0, B1, C0);
input A0, A1, B0, B1, C0;
output Y;


   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   or  I2(Y, C0, OUT0, OUT1);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO221X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO221X0P7H7L ( Y, A0, A1, B0, B1, C0);
input A0, A1, B0, B1, C0;
output Y;


   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   or  I2(Y, C0, OUT0, OUT1);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO221X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO221X1H7L ( Y, A0, A1, B0, B1, C0);
input A0, A1, B0, B1, C0;
output Y;


   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   or  I2(Y, C0, OUT0, OUT1);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO221X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO221X1P4H7L ( Y, A0, A1, B0, B1, C0);
input A0, A1, B0, B1, C0;
output Y;


   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   or  I2(Y, C0, OUT0, OUT1);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO221X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO221X2H7L ( Y, A0, A1, B0, B1, C0);
input A0, A1, B0, B1, C0;
output Y;


   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   or  I2(Y, C0, OUT0, OUT1);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO221X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO221X3H7L ( Y, A0, A1, B0, B1, C0);
input A0, A1, B0, B1, C0;
output Y;


   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   or  I2(Y, C0, OUT0, OUT1);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO221X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO221X4H7L ( Y, A0, A1, B0, B1, C0);
input A0, A1, B0, B1, C0;
output Y;


   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   or  I2(Y, C0, OUT0, OUT1);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO221X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO222X0P5H7L ( Y, A0, A1, B0, B1, C0, C1);
input A0, A1, B0, B1, C0, C1;
output Y;


   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   and I2(OUT2, C0, C1);
   or  I3(Y, OUT0, OUT1, OUT2);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO222X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO222X0P7H7L ( Y, A0, A1, B0, B1, C0, C1);
input A0, A1, B0, B1, C0, C1;
output Y;


   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   and I2(OUT2, C0, C1);
   or  I3(Y, OUT0, OUT1, OUT2);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO222X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO222X1H7L ( Y, A0, A1, B0, B1, C0, C1);
input A0, A1, B0, B1, C0, C1;
output Y;


   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   and I2(OUT2, C0, C1);
   or  I3(Y, OUT0, OUT1, OUT2);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO222X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO222X1P4H7L ( Y, A0, A1, B0, B1, C0, C1);
input A0, A1, B0, B1, C0, C1;
output Y;


   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   and I2(OUT2, C0, C1);
   or  I3(Y, OUT0, OUT1, OUT2);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO222X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO222X2H7L ( Y, A0, A1, B0, B1, C0, C1);
input A0, A1, B0, B1, C0, C1;
output Y;


   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   and I2(OUT2, C0, C1);
   or  I3(Y, OUT0, OUT1, OUT2);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO222X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO222X3H7L ( Y, A0, A1, B0, B1, C0, C1);
input A0, A1, B0, B1, C0, C1;
output Y;


   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   and I2(OUT2, C0, C1);
   or  I3(Y, OUT0, OUT1, OUT2);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO222X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO222X4H7L ( Y, A0, A1, B0, B1, C0, C1);
input A0, A1, B0, B1, C0, C1;
output Y;


   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   and I2(OUT2, C0, C1);
   or  I3(Y, OUT0, OUT1, OUT2);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO222X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO22X0P5H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;

   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   or  I2(Y, OUT0, OUT1);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO22X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO22X0P7H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;

   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   or  I2(Y, OUT0, OUT1);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO22X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO22X1H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;

   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   or  I2(Y, OUT0, OUT1);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO22X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO22X1P4H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;

   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   or  I2(Y, OUT0, OUT1);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO22X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO22X2H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;

   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   or  I2(Y, OUT0, OUT1);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO22X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO22X3H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;

   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   or  I2(Y, OUT0, OUT1);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO22X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO22X4H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;

   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   or  I2(Y, OUT0, OUT1);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO22X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO22X6H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;

   and I0(OUT0, A0, A1);
   and I1(OUT1, B0, B1);
   or  I2(Y, OUT0, OUT1);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'B0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'B0 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'B0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'B0 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AO22X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO31X0P5H7L ( Y, A0, A1, A2, B0);
input A0, A1, A2, B0;
output Y;


   and I0(OUT0, A0, A1, A2);
   or  I1(Y, B0, OUT0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO31X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO31X0P7H7L ( Y, A0, A1, A2, B0);
input A0, A1, A2, B0;
output Y;


   and I0(OUT0, A0, A1, A2);
   or  I1(Y, B0, OUT0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO31X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO31X1H7L ( Y, A0, A1, A2, B0);
input A0, A1, A2, B0;
output Y;


   and I0(OUT0, A0, A1, A2);
   or  I1(Y, B0, OUT0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO31X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO31X1P4H7L ( Y, A0, A1, A2, B0);
input A0, A1, A2, B0;
output Y;


   and I0(OUT0, A0, A1, A2);
   or  I1(Y, B0, OUT0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO31X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO31X2H7L ( Y, A0, A1, A2, B0);
input A0, A1, A2, B0;
output Y;


   and I0(OUT0, A0, A1, A2);
   or  I1(Y, B0, OUT0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO31X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO31X3H7L ( Y, A0, A1, A2, B0);
input A0, A1, A2, B0;
output Y;


   and I0(OUT0, A0, A1, A2);
   or  I1(Y, B0, OUT0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO31X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AO31X4H7L ( Y, A0, A1, A2, B0);
input A0, A1, A2, B0;
output Y;


   and I0(OUT0, A0, A1, A2);
   or  I1(Y, B0, OUT0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AO31X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOA211X0P5H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	and ET_I0( Y_row1, A0, A1, C0 );
	and ET_I1( Y_row2, B0, C0 );
	or ET_I2( Y, Y_row1, Y_row2 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //AOA211X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOA211X0P7H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	and ET_I0( Y_row1, A0, A1, C0 );
	and ET_I1( Y_row2, B0, C0 );
	or ET_I2( Y, Y_row1, Y_row2 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //AOA211X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOA211X1H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	and ET_I0( Y_row1, A0, A1, C0 );
	and ET_I1( Y_row2, B0, C0 );
	or ET_I2( Y, Y_row1, Y_row2 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //AOA211X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOA211X1P4H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	and ET_I0( Y_row1, A0, A1, C0 );
	and ET_I1( Y_row2, B0, C0 );
	or ET_I2( Y, Y_row1, Y_row2 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //AOA211X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOA211X2H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	and ET_I0( Y_row1, A0, A1, C0 );
	and ET_I1( Y_row2, B0, C0 );
	or ET_I2( Y, Y_row1, Y_row2 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //AOA211X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOA211X3H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	and ET_I0( Y_row1, A0, A1, C0 );
	and ET_I1( Y_row2, B0, C0 );
	or ET_I2( Y, Y_row1, Y_row2 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //AOA211X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOA211X4H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	and ET_I0( Y_row1, A0, A1, C0 );
	and ET_I1( Y_row2, B0, C0 );
	or ET_I2( Y, Y_row1, Y_row2 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //AOA211X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOAI211X0P5H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	not ET_I0( A0_inv, A0 );
	not ET_I1( B0_inv, B0 );
	and ET_I2( Y_row1, A0_inv, B0_inv );
	not ET_I3( A1_inv, A1 );
	and ET_I4( Y_row2, A1_inv, B0_inv );
	not ET_I5( C0_inv, C0 );
	or ET_I6( Y, Y_row1, Y_row2, C0_inv );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //AOAI211X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOAI211X0P7H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	not ET_I0( A0_inv, A0 );
	not ET_I1( B0_inv, B0 );
	and ET_I2( Y_row1, A0_inv, B0_inv );
	not ET_I3( A1_inv, A1 );
	and ET_I4( Y_row2, A1_inv, B0_inv );
	not ET_I5( C0_inv, C0 );
	or ET_I6( Y, Y_row1, Y_row2, C0_inv );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //AOAI211X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOAI211X1H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	not ET_I0( A0_inv, A0 );
	not ET_I1( B0_inv, B0 );
	and ET_I2( Y_row1, A0_inv, B0_inv );
	not ET_I3( A1_inv, A1 );
	and ET_I4( Y_row2, A1_inv, B0_inv );
	not ET_I5( C0_inv, C0 );
	or ET_I6( Y, Y_row1, Y_row2, C0_inv );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //AOAI211X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOAI211X1P4H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	not ET_I0( A0_inv, A0 );
	not ET_I1( B0_inv, B0 );
	and ET_I2( Y_row1, A0_inv, B0_inv );
	not ET_I3( A1_inv, A1 );
	and ET_I4( Y_row2, A1_inv, B0_inv );
	not ET_I5( C0_inv, C0 );
	or ET_I6( Y, Y_row1, Y_row2, C0_inv );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //AOAI211X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOAI211X2H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	not ET_I0( A0_inv, A0 );
	not ET_I1( B0_inv, B0 );
	and ET_I2( Y_row1, A0_inv, B0_inv );
	not ET_I3( A1_inv, A1 );
	and ET_I4( Y_row2, A1_inv, B0_inv );
	not ET_I5( C0_inv, C0 );
	or ET_I6( Y, Y_row1, Y_row2, C0_inv );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //AOAI211X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOAI211X3H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	not ET_I0( A0_inv, A0 );
	not ET_I1( B0_inv, B0 );
	and ET_I2( Y_row1, A0_inv, B0_inv );
	not ET_I3( A1_inv, A1 );
	and ET_I4( Y_row2, A1_inv, B0_inv );
	not ET_I5( C0_inv, C0 );
	or ET_I6( Y, Y_row1, Y_row2, C0_inv );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //AOAI211X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOAI211X4H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	not ET_I0( A0_inv, A0 );
	not ET_I1( B0_inv, B0 );
	and ET_I2( Y_row1, A0_inv, B0_inv );
	not ET_I3( A1_inv, A1 );
	and ET_I4( Y_row2, A1_inv, B0_inv );
	not ET_I5( C0_inv, C0 );
	or ET_I6( Y, Y_row1, Y_row2, C0_inv );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //AOAI211X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI211X0P5H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  and I0(outA, A0, A1);
  nor I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI211X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI211X0P7H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  and I0(outA, A0, A1);
  nor I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI211X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI211X1H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  and I0(outA, A0, A1);
  nor I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI211X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI211X1P4H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  and I0(outA, A0, A1);
  nor I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI211X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI211X2H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  and I0(outA, A0, A1);
  nor I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI211X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI211X3H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  and I0(outA, A0, A1);
  nor I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI211X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI211X4H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  and I0(outA, A0, A1);
  nor I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI211X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI211X6H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  and I0(outA, A0, A1);
  nor I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI211X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21BX0P5H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  and I0(outA, A0, A1);
  not I1 (outB, B0N);
  nor I3 (Y,outA,outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0N==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0N==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21BX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21BX0P7H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  and I0(outA, A0, A1);
  not I1 (outB, B0N);
  nor I3 (Y,outA,outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0N==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0N==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21BX0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21BX1H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  and I0(outA, A0, A1);
  not I1 (outB, B0N);
  nor I3 (Y,outA,outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0N==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0N==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21BX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21BX1P4H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  and I0(outA, A0, A1);
  not I1 (outB, B0N);
  nor I3 (Y,outA,outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0N==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0N==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21BX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21BX2H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  and I0(outA, A0, A1);
  not I1 (outB, B0N);
  nor I3 (Y,outA,outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0N==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0N==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21BX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21BX3H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  and I0(outA, A0, A1);
  not I1 (outB, B0N);
  nor I3 (Y,outA,outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0N==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0N==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21BX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21BX4H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  and I0(outA, A0, A1);
  not I1 (outB, B0N);
  nor I3 (Y,outA,outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0N==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0N==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21BX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21BX6H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  and I0(outA, A0, A1);
  not I1 (outB, B0N);
  nor I3 (Y,outA,outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0N==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0N==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21BX6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21X0P5H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;

    and ET_I0(OUT0, A0, A1);
    nor ET_I1(Y, OUT0, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21X0P7H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;

    and ET_I0(OUT0, A0, A1);
    nor ET_I1(Y, OUT0, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21X1H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;

    and ET_I0(OUT0, A0, A1);
    nor ET_I1(Y, OUT0, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21X1P4H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;

    and ET_I0(OUT0, A0, A1);
    nor ET_I1(Y, OUT0, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21X2H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;

    and ET_I0(OUT0, A0, A1);
    nor ET_I1(Y, OUT0, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21X3H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;

    and ET_I0(OUT0, A0, A1);
    nor ET_I1(Y, OUT0, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21X4H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;

    and ET_I0(OUT0, A0, A1);
    nor ET_I1(Y, OUT0, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21X6H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;

    and ET_I0(OUT0, A0, A1);
    nor ET_I1(Y, OUT0, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI21X8H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;

    and ET_I0(OUT0, A0, A1);
    nor ET_I1(Y, OUT0, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI21X8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI221X0P5H7L (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, C0, outB, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI221X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI221X0P7H7L (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, C0, outB, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI221X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI221X1H7L (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, C0, outB, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI221X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI221X1P4H7L (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, C0, outB, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI221X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI221X2H7L (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, C0, outB, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI221X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI221X3H7L (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, C0, outB, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI221X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI221X4H7L (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, C0, outB, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI221X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI222X0P5H7L (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  and I2(outC, C0, C1);
  nor I3(Y, outA, outB, outC);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI222X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI222X0P7H7L (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  and I2(outC, C0, C1);
  nor I3(Y, outA, outB, outC);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI222X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI222X1H7L (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  and I2(outC, C0, C1);
  nor I3(Y, outA, outB, outC);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI222X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI222X1P4H7L (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  and I2(outC, C0, C1);
  nor I3(Y, outA, outB, outC);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI222X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI222X2H7L (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  and I2(outC, C0, C1);
  nor I3(Y, outA, outB, outC);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI222X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI222X3H7L (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  and I2(outC, C0, C1);
  nor I3(Y, outA, outB, outC);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI222X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI222X4H7L (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  and I2(outC, C0, C1);
  nor I3(Y, outA, outB, outC);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(C1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI222X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI22X0P5H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI22X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI22X0P7H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI22X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI22X1H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI22X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI22X1P4H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI22X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI22X2H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI22X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI22X3H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI22X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI22X4H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI22X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI22X6H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && B0==1'b0 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI22X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB1X0P5H7L ( Y, A0N, A1N, B0);
input A0N, A1N, B0;
output Y;


    not I0(B0_bar, B0);
    and I1(OUT0, A1N, B0_bar);
    and I2(OUT1, A0N, B0_bar);
    or  I3(Y, OUT0, OUT1);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB1X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB1X0P7H7L ( Y, A0N, A1N, B0);
input A0N, A1N, B0;
output Y;


    not I0(B0_bar, B0);
    and I1(OUT0, A1N, B0_bar);
    and I2(OUT1, A0N, B0_bar);
    or  I3(Y, OUT0, OUT1);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB1X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB1X1H7L ( Y, A0N, A1N, B0);
input A0N, A1N, B0;
output Y;


    not I0(B0_bar, B0);
    and I1(OUT0, A1N, B0_bar);
    and I2(OUT1, A0N, B0_bar);
    or  I3(Y, OUT0, OUT1);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB1X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB1X1P4H7L ( Y, A0N, A1N, B0);
input A0N, A1N, B0;
output Y;


    not I0(B0_bar, B0);
    and I1(OUT0, A1N, B0_bar);
    and I2(OUT1, A0N, B0_bar);
    or  I3(Y, OUT0, OUT1);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB1X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB1X2H7L ( Y, A0N, A1N, B0);
input A0N, A1N, B0;
output Y;


    not I0(B0_bar, B0);
    and I1(OUT0, A1N, B0_bar);
    and I2(OUT1, A0N, B0_bar);
    or  I3(Y, OUT0, OUT1);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB1X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB1X3H7L ( Y, A0N, A1N, B0);
input A0N, A1N, B0;
output Y;


    not I0(B0_bar, B0);
    and I1(OUT0, A1N, B0_bar);
    and I2(OUT1, A0N, B0_bar);
    or  I3(Y, OUT0, OUT1);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB1X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB1X4H7L ( Y, A0N, A1N, B0);
input A0N, A1N, B0;
output Y;


    not I0(B0_bar, B0);
    and I1(OUT0, A1N, B0_bar);
    and I2(OUT1, A0N, B0_bar);
    or  I3(Y, OUT0, OUT1);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB1X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB1X6H7L ( Y, A0N, A1N, B0);
input A0N, A1N, B0;
output Y;


    not I0(B0_bar, B0);
    and I1(OUT0, A1N, B0_bar);
    and I2(OUT1, A0N, B0_bar);
    or  I3(Y, OUT0, OUT1);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB1X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB2X0P5H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


  nor I0 (outA, A0N, A1N);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB2X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB2X0P7H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


  nor I0 (outA, A0N, A1N);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB2X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB2X1H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


  nor I0 (outA, A0N, A1N);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB2X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB2X1P4H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


  nor I0 (outA, A0N, A1N);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB2X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB2X2H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


  nor I0 (outA, A0N, A1N);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB2X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB2X3H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


  nor I0 (outA, A0N, A1N);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB2X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB2X4H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


  nor I0 (outA, A0N, A1N);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB2X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2BB2X6H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


  nor I0 (outA, A0N, A1N);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI2BB2X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2XB1X0P5H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  nor I2(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b0 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI2XB1X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2XB1X0P7H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  nor I2(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b0 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI2XB1X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2XB1X1H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  nor I2(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b0 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI2XB1X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2XB1X1P4H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  nor I2(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b0 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI2XB1X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2XB1X2H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  nor I2(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b0 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI2XB1X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2XB1X3H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  nor I2(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b0 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI2XB1X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2XB1X4H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  nor I2(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b0 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI2XB1X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI2XB1X6H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  nor I2(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b0 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && B0==1'b0)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI2XB1X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI31X0P5H7L (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;



  and I0(outA, A0, A1, A2);
  nor I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && A2==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI31X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI31X0P7H7L (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;



  and I0(outA, A0, A1, A2);
  nor I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && A2==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI31X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI31X1H7L (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;



  and I0(outA, A0, A1, A2);
  nor I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && A2==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI31X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI31X1P4H7L (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;



  and I0(outA, A0, A1, A2);
  nor I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && A2==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI31X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI31X2H7L (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;



  and I0(outA, A0, A1, A2);
  nor I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && A2==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI31X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI31X3H7L (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;



  and I0(outA, A0, A1, A2);
  nor I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && A2==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI31X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI31X4H7L (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;



  and I0(outA, A0, A1, A2);
  nor I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && A2==1'b1 && B0==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI31X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI32X0P5H7L (Y, A0, A1, A2, B0, B1);
output Y;
input A0, A1, A2, B0, B1;



  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && A2==1'b1 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(A2 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI32X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI32X0P7H7L (Y, A0, A1, A2, B0, B1);
output Y;
input A0, A1, A2, B0, B1;



  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && A2==1'b1 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(A2 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI32X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI32X1H7L (Y, A0, A1, A2, B0, B1);
output Y;
input A0, A1, A2, B0, B1;



  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && A2==1'b1 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(A2 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI32X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI32X1P4H7L (Y, A0, A1, A2, B0, B1);
output Y;
input A0, A1, A2, B0, B1;



  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && A2==1'b1 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(A2 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI32X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI32X2H7L (Y, A0, A1, A2, B0, B1);
output Y;
input A0, A1, A2, B0, B1;



  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && A2==1'b1 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(A2 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI32X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI32X3H7L (Y, A0, A1, A2, B0, B1);
output Y;
input A0, A1, A2, B0, B1;



  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && A2==1'b1 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(A2 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI32X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI32X4H7L (Y, A0, A1, A2, B0, B1);
output Y;
input A0, A1, A2, B0, B1;



  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b1 && A2==1'b1 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A2==1'b1 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(A2 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && B1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1 && B0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0 && B0==1'b1)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //AOI32X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI33X0P5H7L ( Y, A0, A1, A2, B0, B1, B2);
input A0, A1, A2, B0, B1, B2;
output Y;


  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1, B2);
  nor I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI33X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI33X0P7H7L ( Y, A0, A1, A2, B0, B1, B2);
input A0, A1, A2, B0, B1, B2;
output Y;


  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1, B2);
  nor I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI33X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI33X1H7L ( Y, A0, A1, A2, B0, B1, B2);
input A0, A1, A2, B0, B1, B2;
output Y;


  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1, B2);
  nor I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI33X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI33X1P4H7L ( Y, A0, A1, A2, B0, B1, B2);
input A0, A1, A2, B0, B1, B2;
output Y;


  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1, B2);
  nor I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI33X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI33X2H7L ( Y, A0, A1, A2, B0, B1, B2);
input A0, A1, A2, B0, B1, B2;
output Y;


  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1, B2);
  nor I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI33X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI33X3H7L ( Y, A0, A1, A2, B0, B1, B2);
input A0, A1, A2, B0, B1, B2;
output Y;


  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1, B2);
  nor I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI33X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module AOI33X4H7L ( Y, A0, A1, A2, B0, B1, B2);
input A0, A1, A2, B0, B1, B2;
output Y;


  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1, B2);
  nor I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //AOI33X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX0P5H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX0P7H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX10H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX10H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX12H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX12H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX16H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX16H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX1H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX1P4H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX20H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX20H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX2H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX2P5H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX2P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX3H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX3P5H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX3P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX4H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX5H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX6H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX7H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module BUFX8H7L (Y, A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //BUFX8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFNQX1H7L (Q, CKN, D);
output Q;
input  D, CKN;
reg NOTIFIER;
supply1 xSN,xRN;
  not      IC (clk, CKN);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);


`ifdef functional // functional //
`else // functional //
specify
$width(posedge CKN,1.0,0,NOTIFIER);
$width(negedge CKN,1.0,0,NOTIFIER);
$setuphold(negedge CKN, posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN, negedge D, 1.0, 1.0, NOTIFIER);
(negedge CKN => (Q:1'bx))=(1.0,1.0);

endspecify
`endif // functional //
endmodule //DFFNQX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFNQX2H7L (Q, CKN, D);
output Q;
input  D, CKN;
reg NOTIFIER;
supply1 xSN,xRN;
  not      IC (clk, CKN);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);


`ifdef functional // functional //
`else // functional //
specify
$width(posedge CKN,1.0,0,NOTIFIER);
$width(negedge CKN,1.0,0,NOTIFIER);
$setuphold(negedge CKN, posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN, negedge D, 1.0, 1.0, NOTIFIER);
(negedge CKN => (Q:1'bx))=(1.0,1.0);

endspecify
`endif // functional //
endmodule //DFFNQX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFNQX3H7L (Q, CKN, D);
output Q;
input  D, CKN;
reg NOTIFIER;
supply1 xSN,xRN;
  not      IC (clk, CKN);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);


`ifdef functional // functional //
`else // functional //
specify
$width(posedge CKN,1.0,0,NOTIFIER);
$width(negedge CKN,1.0,0,NOTIFIER);
$setuphold(negedge CKN, posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN, negedge D, 1.0, 1.0, NOTIFIER);
(negedge CKN => (Q:1'bx))=(1.0,1.0);

endspecify
`endif // functional //
endmodule //DFFNQX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFNRX0P5H7L (D, RN, CKN, Q, QN);
  input D, RN, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I6(ENABLE_RN,RN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify


  `endif // functional //

endmodule //DFFNRX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFNRX1H7L (D, RN, CKN, Q, QN);
  input D, RN, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I6(ENABLE_RN,RN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify


  `endif // functional //

endmodule //DFFNRX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFNRX2H7L (D, RN, CKN, Q, QN);
  input D, RN, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I6(ENABLE_RN,RN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify


  `endif // functional //

endmodule //DFFNRX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFNRX4H7L (D, RN, CKN, Q, QN);
  input D, RN, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I6(ENABLE_RN,RN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify


  `endif // functional //

endmodule //DFFNRX4H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module DFFNSX0P5H7L (D, SN, CKN, Q, QN);
  input D, SN, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_SN,SN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN === 1'b1),
            negedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN === 1'b1),
            posedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_NOT_D === 1'b1), posedge SN &&& (ENABLE_NOT_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //DFFNSX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFNSX1H7L (D, SN, CKN, Q, QN);
  input D, SN, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_SN,SN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN === 1'b1),
            negedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN === 1'b1),
            posedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_NOT_D === 1'b1), posedge SN &&& (ENABLE_NOT_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //DFFNSX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFNSX2H7L (D, SN, CKN, Q, QN);
  input D, SN, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SN);
  not     IC (clk,CKN);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_SN,SN);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN === 1'b1),
            negedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN === 1'b1),
            posedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_NOT_D === 1'b1), posedge SN &&& (ENABLE_NOT_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //DFFNSX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFNX0P5H7L ( Q, QN, CKN, D);
input CKN, D;
output Q, QN;

  reg NOTIFIER;
  supply1 xSN,xRN;

  not     IC (clk, CKN);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN, posedge D, 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //

endmodule //DFFNX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFNX1H7L ( Q, QN, CKN, D);
input CKN, D;
output Q, QN;

  reg NOTIFIER;
  supply1 xSN,xRN;

  not     IC (clk, CKN);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN, posedge D, 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //

endmodule //DFFNX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFNX2H7L ( Q, QN, CKN, D);
input CKN, D;
output Q, QN;

  reg NOTIFIER;
  supply1 xSN,xRN;

  not     IC (clk, CKN);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN, posedge D, 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //

endmodule //DFFNX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFNX3H7L ( Q, QN, CKN, D);
input CKN, D;
output Q, QN;

  reg NOTIFIER;
  supply1 xSN,xRN;

  not     IC (clk, CKN);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN, posedge D, 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //

endmodule //DFFNX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFQX0P5H7L (Q, CK, D);
output Q;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);


`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK,1.0,0,NOTIFIER);
$width(negedge CK,1.0,0,NOTIFIER);
$setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER);
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //DFFQX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFQX1H7L (Q, CK, D);
output Q;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);


`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK,1.0,0,NOTIFIER);
$width(negedge CK,1.0,0,NOTIFIER);
$setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER);
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //DFFQX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFQX2H7L (Q, CK, D);
output Q;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);


`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK,1.0,0,NOTIFIER);
$width(negedge CK,1.0,0,NOTIFIER);
$setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER);
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //DFFQX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFQX3H7L (Q, CK, D);
output Q;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);


`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK,1.0,0,NOTIFIER);
$width(negedge CK,1.0,0,NOTIFIER);
$setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER);
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //DFFQX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFRQNX1H7L (D, RN, CK, QN);
  input D, RN, CK;

  output QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);

  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_RN,RN);


  specify


	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //DFFRQNX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFRQNX2H7L (D, RN, CK, QN);
  input D, RN, CK;

  output QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);

  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_RN,RN);


  specify


	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //DFFRQNX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFRQX0P5H7L (D, RN, CK, Q);
  input D, RN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_RN,RN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //DFFRQX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFRQX1H7L (D, RN, CK, Q);
  input D, RN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_RN,RN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //DFFRQX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFRQX2H7L (D, RN, CK, Q);
  input D, RN, CK;

  output Q;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_RN,RN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //DFFRQX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFRX0P5H7L (D, RN, CK, Q, QN);
  input D, RN, CK;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_RN,RN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //DFFRX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFRX1H7L (D, RN, CK, Q, QN);
  input D, RN, CK;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_RN,RN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //DFFRX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFRX2H7L (D, RN, CK, Q, QN);
  input D, RN, CK;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_RN,RN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //DFFRX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFRX3H7L (D, RN, CK, Q, QN);
  input D, RN, CK;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf   XX0 (xRN,RN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_RN,RN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //DFFRX3H7L
`endcelldefine


`timescale 1ns/1ps
`timescale 1ns/1ps
`celldefine
module DFFSQNX1H7L (QN, CK, D, SN);
output QN;
input  D, CK, SN;
reg NOTIFIER;
supply1 xRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  not     I2 (QN, n0);

wire ENABLE_SN ;
wire ENABLE_NOT_D ;
assign ENABLE_SN = (SN) ? 1'b1:1'b0;
assign ENABLE_NOT_D = (!D) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK &&& (ENABLE_SN == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_SN == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SN == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SN == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$recrem(posedge SN, posedge CK &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);
$width(negedge SN,1.0,0,NOTIFIER);
if (SN==1'b1)
(posedge CK => (QN:1'bx)) = (1.0,1.0);
if (CK==1'b0 && D==1'b0)
(negedge SN *> (QN -: 1'b1))=(0, 1.0);
if (CK==1'b0 && D==1'b1)
(negedge SN *> (QN -: 1'b1))=(0, 1.0);
if (CK==1'b1 && D==1'b0)
(negedge SN *> (QN -: 1'b1))=(0, 1.0);
if (CK==1'b1 && D==1'b1)
(negedge SN *> (QN -: 1'b1))=(0, 1.0);

endspecify
`endif // functional //
endmodule //DFFSQNX1H7L
`endcelldefine

`timescale 1ns/1ps
`timescale 1ns/1ps
`celldefine
module DFFSQNX2H7L (QN, CK, D, SN);
output QN;
input  D, CK, SN;
reg NOTIFIER;
supply1 xRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  not     I2 (QN, n0);

wire ENABLE_SN ;
wire ENABLE_NOT_D ;
assign ENABLE_SN = (SN) ? 1'b1:1'b0;
assign ENABLE_NOT_D = (!D) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK &&& (ENABLE_SN == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_SN == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SN == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SN == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$recrem(posedge SN, posedge CK &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);
$width(negedge SN,1.0,0,NOTIFIER);
if (SN==1'b1)
(posedge CK => (QN:1'bx)) = (1.0,1.0);
if (CK==1'b0 && D==1'b0)
(negedge SN *> (QN -: 1'b1))=(0, 1.0);
if (CK==1'b0 && D==1'b1)
(negedge SN *> (QN -: 1'b1))=(0, 1.0);
if (CK==1'b1 && D==1'b0)
(negedge SN *> (QN -: 1'b1))=(0, 1.0);
if (CK==1'b1 && D==1'b1)
(negedge SN *> (QN -: 1'b1))=(0, 1.0);

endspecify
`endif // functional //
endmodule //DFFSQNX2H7L
`endcelldefine

`timescale 1ns/1ps
`celldefine
module DFFSQX1H7L (Q, CK, D, SN);
output Q;
input  D, CK, SN;
reg NOTIFIER;
supply1 xRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

wire ENABLE_SN ;
wire ENABLE_NOT_D ;
assign ENABLE_SN = (SN) ? 1'b1:1'b0;
assign ENABLE_NOT_D = (!D) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK &&& (ENABLE_SN == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_SN == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SN == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SN == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$recrem(posedge SN, posedge CK &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);
$width(negedge SN,1.0,0,NOTIFIER);
if (SN==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (CK==1'b0 && D==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);

endspecify
`endif // functional //
endmodule //DFFSQX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFSQX2H7L (Q, CK, D, SN);
output Q;
input  D, CK, SN;
reg NOTIFIER;
supply1 xRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);

wire ENABLE_SN ;
wire ENABLE_NOT_D ;
assign ENABLE_SN = (SN) ? 1'b1:1'b0;
assign ENABLE_NOT_D = (!D) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK &&& (ENABLE_SN == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_SN == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SN == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SN == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$recrem(posedge SN, posedge CK &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);
$width(negedge SN,1.0,0,NOTIFIER);
if (SN==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (CK==1'b0 && D==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);

endspecify
`endif // functional //
endmodule //DFFSQX2H7L
`endcelldefine




`timescale 1ns/1ps
`celldefine
module DFFSX0P5H7L (D, SN, CK, Q, QN);
  input D, SN, CK;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_SN,SN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN === 1'b1),
            negedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN === 1'b1),
            posedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1), posedge SN &&& (ENABLE_NOT_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //DFFSX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFSX1H7L (D, SN, CK, Q, QN);
  input D, SN, CK;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_SN,SN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN === 1'b1),
            negedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN === 1'b1),
            posedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1), posedge SN &&& (ENABLE_NOT_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //DFFSX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFSX2H7L (D, SN, CK, Q, QN);
  input D, SN, CK;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  buf   XX0 (xSN,SN);
  buf     IC (clk,CK);
  udp_dff I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;



  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_SN,SN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN === 1'b1),
            negedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN === 1'b1),
            posedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1), posedge SN &&& (ENABLE_NOT_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //DFFSX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFTRQX0P5H7L ( Q, CK, D, RN);
input CK, D, RN;
output Q;

  reg NOTIFIER;
  supply1 xSN, EN;

  buf       X0 (xRN, RN);
  buf       IC (clk, CK);
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER);
  buf       I1 (Q, n0);
  and       I4 (Deff, D, xRN);



  `ifdef functional // functional //

  `else // functional //

  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //DFFTRQX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFTRQX1H7L ( Q, CK, D, RN);
input CK, D, RN;
output Q;

  reg NOTIFIER;
  supply1 xSN, EN;

  buf       X0 (xRN, RN);
  buf       IC (clk, CK);
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER);
  buf       I1 (Q, n0);
  and       I4 (Deff, D, xRN);



  `ifdef functional // functional //

  `else // functional //

  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //DFFTRQX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFTRQX2H7L ( Q, CK, D, RN);
input CK, D, RN;
output Q;

  reg NOTIFIER;
  supply1 xSN, EN;

  buf       X0 (xRN, RN);
  buf       IC (clk, CK);
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER);
  buf       I1 (Q, n0);
  and       I4 (Deff, D, xRN);



  `ifdef functional // functional //

  `else // functional //

  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //DFFTRQX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFX0P5H7L ( Q, QN, CK, D);
input CK, D;
output Q, QN;

  reg NOTIFIER;
  supply1 xSN,xRN;


  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //DFFX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFX1H7L ( Q, QN, CK, D);
input CK, D;
output Q, QN;

  reg NOTIFIER;
  supply1 xSN,xRN;


  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //DFFX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFX2H7L ( Q, QN, CK, D);
input CK, D;
output Q, QN;

  reg NOTIFIER;
  supply1 xSN,xRN;


  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //DFFX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DFFX3H7L ( Q, QN, CK, D);
input CK, D;
output Q, QN;

  reg NOTIFIER;
  supply1 xSN,xRN;


  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //DFFX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DLY1X2H7L ( Y, A);
input A;
output Y;
	buf ET_I0( Y, A );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A --> Y
	 (A => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //DLY1X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DLY1X6H7L ( Y, A);
input A;
output Y;
	buf ET_I0( Y, A );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A --> Y
	 (A => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //DLY1X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DLY2X2H7L (Y,A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //DLY2X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DLY2X6H7L (Y,A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //DLY2X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DLY3X2H7L ( Y, A);
input A;
output Y;
	buf ET_I0( Y, A );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A --> Y
	 (A => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //DLY3X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DLY3X6H7L ( Y, A);
input A;
output Y;
	buf ET_I0( Y, A );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A --> Y
	 (A => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //DLY3X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DLY4X2H7L (Y,A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //DLY4X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module DLY4X6H7L (Y,A);
output Y;
input A;

  buf I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //DLY4X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module EDFFQX0P5H7L (Q, CK, D, E);
output Q;
input D, CK, E;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER);
  buf     B1 (Q, n0);

wire ENABLE_E ;
assign ENABLE_E = (E) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK &&& (ENABLE_E == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_E == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_E == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_E == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK, posedge E, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK, negedge E, 1.0, 1.0, NOTIFIER);
if (E==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //EDFFQX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module EDFFQX1H7L (Q, CK, D, E);
output Q;
input D, CK, E;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER);
  buf     B1 (Q, n0);

wire ENABLE_E ;
assign ENABLE_E = (E) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK &&& (ENABLE_E == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_E == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_E == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_E == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK, posedge E, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK, negedge E, 1.0, 1.0, NOTIFIER);
if (E==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //EDFFQX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module EDFFQX2H7L (Q, CK, D, E);
output Q;
input D, CK, E;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER);
  buf     B1 (Q, n0);

wire ENABLE_E ;
assign ENABLE_E = (E) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK &&& (ENABLE_E == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_E == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_E == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_E == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK, posedge E, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK, negedge E, 1.0, 1.0, NOTIFIER);
if (E==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //EDFFQX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ESDFFQX0P5H7L (Q, CK, D, E, SE, SI);
output Q;
input D, CK, E, SE, SI;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

   udp_sedff I0 (n0, D, CK, xRN, SI, SE, E, NOTIFIER);
   buf       I1 (Q, n0);

wire ENABLE_E_OR_SE ;
wire ENABLE_E_AND_NOT_SE ;
wire ENABLE_NOT_SE ;
wire ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI_OR_NOT_E ;
wire ENABLE_SE ;
assign ENABLE_E_OR_SE = (E | SE) ? 1'b1:1'b0;
assign ENABLE_E_AND_NOT_SE = (E&!SE) ? 1'b1:1'b0;
assign ENABLE_NOT_SE = (!SE) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI_OR_NOT_E = (D&!SI | !D&SI | !E) ? 1'b1:1'b0;
assign ENABLE_SE = (SE) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK &&& (ENABLE_E_OR_SE == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_E_OR_SE == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_E_AND_NOT_SE == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_E_AND_NOT_SE == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI_OR_NOT_E == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI_OR_NOT_E == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
if (D==1'b0 && E==1'b0 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b0 && E==1'b1 && SI==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && E==1'b0 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && E==1'b1 && SE==1'b0 && SI==1'b1 || D==1'b0 && E==1'b1 && SE==1'b1 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && E==1'b1 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (E==1'b1 && SE==1'b0 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //ESDFFQX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ESDFFQX1H7L (Q, CK, D, E, SE, SI);
output Q;
input D, CK, E, SE, SI;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

   udp_sedff I0 (n0, D, CK, xRN, SI, SE, E, NOTIFIER);
   buf       I1 (Q, n0);

wire ENABLE_E_OR_SE ;
wire ENABLE_E_AND_NOT_SE ;
wire ENABLE_NOT_SE ;
wire ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI_OR_NOT_E ;
wire ENABLE_SE ;
assign ENABLE_E_OR_SE = (E | SE) ? 1'b1:1'b0;
assign ENABLE_E_AND_NOT_SE = (E&!SE) ? 1'b1:1'b0;
assign ENABLE_NOT_SE = (!SE) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI_OR_NOT_E = (D&!SI | !D&SI | !E) ? 1'b1:1'b0;
assign ENABLE_SE = (SE) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK &&& (ENABLE_E_OR_SE == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_E_OR_SE == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_E_AND_NOT_SE == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_E_AND_NOT_SE == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI_OR_NOT_E == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI_OR_NOT_E == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
if (D==1'b0 && E==1'b0 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b0 && E==1'b1 && SI==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && E==1'b0 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && E==1'b1 && SE==1'b0 && SI==1'b1 || D==1'b0 && E==1'b1 && SE==1'b1 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && E==1'b1 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (E==1'b1 && SE==1'b0 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //ESDFFQX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ESDFFQX2H7L (Q, CK, D, E, SE, SI);
output Q;
input D, CK, E, SE, SI;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

   udp_sedff I0 (n0, D, CK, xRN, SI, SE, E, NOTIFIER);
   buf       I1 (Q, n0);

wire ENABLE_E_OR_SE ;
wire ENABLE_E_AND_NOT_SE ;
wire ENABLE_NOT_SE ;
wire ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI_OR_NOT_E ;
wire ENABLE_SE ;
assign ENABLE_E_OR_SE = (E | SE) ? 1'b1:1'b0;
assign ENABLE_E_AND_NOT_SE = (E&!SE) ? 1'b1:1'b0;
assign ENABLE_NOT_SE = (!SE) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI_OR_NOT_E = (D&!SI | !D&SI | !E) ? 1'b1:1'b0;
assign ENABLE_SE = (SE) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK &&& (ENABLE_E_OR_SE == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_E_OR_SE == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_E_AND_NOT_SE == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_E_AND_NOT_SE == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI_OR_NOT_E == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI_OR_NOT_E == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
if (D==1'b0 && E==1'b0 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b0 && E==1'b1 && SI==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && E==1'b0 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && E==1'b1 && SE==1'b0 && SI==1'b1 || D==1'b0 && E==1'b1 && SE==1'b1 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && E==1'b1 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (E==1'b1 && SE==1'b0 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //ESDFFQX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ICGNX0P5H7L (CKN, E, ECK);
input  CKN;
input  E;
output ECK;
wire dly_E;
wire dly_CKN;

reg NOTIFIER;

buf (dly_E, E);
buf (dly_CKN, CKN);
ipicg_latchsr _i0 (P0001,dly_E,dly_CKN,1'b1,1'b1,NOTIFIER);
not _i1 (_n1,P0001);
or _i2 (ECK,_n1,dly_CKN);

`ifdef functional  //  functional //
`else
   specify
     specparam
     tplh$CKN$ECK   = 1.0,
     tphl$CKN$ECK   = 1.0,
     tsetup$E$CKN = 1.0,
     thold$E$CKN  = 0.5,
     tminpwh$CKN    = 1.0,
     tperiod$CKN    = 1.0;

     // path delays
     (CKN *> ECK) = (tplh$CKN$ECK, tphl$CKN$ECK);

     // timing checks
     $setuphold(negedge CKN, negedge E, tsetup$E$CKN, thold$E$CKN, NOTIFIER, , , dly_CKN, dly_E);
     $setuphold(negedge CKN, posedge E, tsetup$E$CKN, thold$E$CKN, NOTIFIER, , , dly_CKN, dly_E);
     $width(posedge CKN, tminpwh$CKN, 0, NOTIFIER);
     $period(posedge CKN, tperiod$CKN, NOTIFIER);

   endspecify
`endif // functional //

endmodule //ICGNX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ICGNX1H7L (CKN, E, ECK);
input  CKN;
input  E;
output ECK;
wire dly_E;
wire dly_CKN;

reg NOTIFIER;

buf (dly_E, E);
buf (dly_CKN, CKN);
ipicg_latchsr _i0 (P0001,dly_E,dly_CKN,1'b1,1'b1,NOTIFIER);
not _i1 (_n1,P0001);
or _i2 (ECK,_n1,dly_CKN);

`ifdef functional  //  functional //
`else
   specify
     specparam
     tplh$CKN$ECK   = 1.0,
     tphl$CKN$ECK   = 1.0,
     tsetup$E$CKN = 1.0,
     thold$E$CKN  = 0.5,
     tminpwh$CKN    = 1.0,
     tperiod$CKN    = 1.0;

     // path delays
     (CKN *> ECK) = (tplh$CKN$ECK, tphl$CKN$ECK);

     // timing checks
     $setuphold(negedge CKN, negedge E, tsetup$E$CKN, thold$E$CKN, NOTIFIER, , , dly_CKN, dly_E);
     $setuphold(negedge CKN, posedge E, tsetup$E$CKN, thold$E$CKN, NOTIFIER, , , dly_CKN, dly_E);
     $width(posedge CKN, tminpwh$CKN, 0, NOTIFIER);
     $period(posedge CKN, tperiod$CKN, NOTIFIER);

   endspecify
`endif // functional //

endmodule //ICGNX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ICGNX2H7L (CKN, E, ECK);
input  CKN;
input  E;
output ECK;
wire dly_E;
wire dly_CKN;

reg NOTIFIER;

buf (dly_E, E);
buf (dly_CKN, CKN);
ipicg_latchsr _i0 (P0001,dly_E,dly_CKN,1'b1,1'b1,NOTIFIER);
not _i1 (_n1,P0001);
or _i2 (ECK,_n1,dly_CKN);

`ifdef functional  //  functional //
`else
   specify
     specparam
     tplh$CKN$ECK   = 1.0,
     tphl$CKN$ECK   = 1.0,
     tsetup$E$CKN = 1.0,
     thold$E$CKN  = 0.5,
     tminpwh$CKN    = 1.0,
     tperiod$CKN    = 1.0;

     // path delays
     (CKN *> ECK) = (tplh$CKN$ECK, tphl$CKN$ECK);

     // timing checks
     $setuphold(negedge CKN, negedge E, tsetup$E$CKN, thold$E$CKN, NOTIFIER, , , dly_CKN, dly_E);
     $setuphold(negedge CKN, posedge E, tsetup$E$CKN, thold$E$CKN, NOTIFIER, , , dly_CKN, dly_E);
     $width(posedge CKN, tminpwh$CKN, 0, NOTIFIER);
     $period(posedge CKN, tperiod$CKN, NOTIFIER);

   endspecify
`endif // functional //

endmodule //ICGNX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ICGNX3H7L (CKN, E, ECK);
input  CKN;
input  E;
output ECK;
wire dly_E;
wire dly_CKN;

reg NOTIFIER;

buf (dly_E, E);
buf (dly_CKN, CKN);
ipicg_latchsr _i0 (P0001,dly_E,dly_CKN,1'b1,1'b1,NOTIFIER);
not _i1 (_n1,P0001);
or _i2 (ECK,_n1,dly_CKN);

`ifdef functional  //  functional //
`else
   specify
     specparam
     tplh$CKN$ECK   = 1.0,
     tphl$CKN$ECK   = 1.0,
     tsetup$E$CKN = 1.0,
     thold$E$CKN  = 0.5,
     tminpwh$CKN    = 1.0,
     tperiod$CKN    = 1.0;

     // path delays
     (CKN *> ECK) = (tplh$CKN$ECK, tphl$CKN$ECK);

     // timing checks
     $setuphold(negedge CKN, negedge E, tsetup$E$CKN, thold$E$CKN, NOTIFIER, , , dly_CKN, dly_E);
     $setuphold(negedge CKN, posedge E, tsetup$E$CKN, thold$E$CKN, NOTIFIER, , , dly_CKN, dly_E);
     $width(posedge CKN, tminpwh$CKN, 0, NOTIFIER);
     $period(posedge CKN, tperiod$CKN, NOTIFIER);

   endspecify
`endif // functional //

endmodule //ICGNX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ICGNX4H7L (CKN, E, ECK);
input  CKN;
input  E;
output ECK;
wire dly_E;
wire dly_CKN;

reg NOTIFIER;

buf (dly_E, E);
buf (dly_CKN, CKN);
ipicg_latchsr _i0 (P0001,dly_E,dly_CKN,1'b1,1'b1,NOTIFIER);
not _i1 (_n1,P0001);
or _i2 (ECK,_n1,dly_CKN);

`ifdef functional  //  functional //
`else
   specify
     specparam
     tplh$CKN$ECK   = 1.0,
     tphl$CKN$ECK   = 1.0,
     tsetup$E$CKN = 1.0,
     thold$E$CKN  = 0.5,
     tminpwh$CKN    = 1.0,
     tperiod$CKN    = 1.0;

     // path delays
     (CKN *> ECK) = (tplh$CKN$ECK, tphl$CKN$ECK);

     // timing checks
     $setuphold(negedge CKN, negedge E, tsetup$E$CKN, thold$E$CKN, NOTIFIER, , , dly_CKN, dly_E);
     $setuphold(negedge CKN, posedge E, tsetup$E$CKN, thold$E$CKN, NOTIFIER, , , dly_CKN, dly_E);
     $width(posedge CKN, tminpwh$CKN, 0, NOTIFIER);
     $period(posedge CKN, tperiod$CKN, NOTIFIER);

   endspecify
`endif // functional //

endmodule //ICGNX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ICGX0P5H7L (CK, E, ECK);
input  CK;
input  E;
output ECK;
wire dly_E;
wire dly_CK;

reg NOTIFIER;

buf (dly_E, E);
buf (dly_CK, CK);
ipicg_latchnsr _i0 (P0001,dly_E,dly_CK,1'b1,1'b1,NOTIFIER);
and _i1 (ECK,dly_CK,P0001);

`ifdef functional  //  functional //
`else
   specify
     specparam
     tplh$CK$ECK   = 1.0,
     tphl$CK$ECK   = 1.0,
     tsetup$E$CK = 1.0,
     thold$E$CK  = 0.5,
     tminpwl$CK    = 1.0,
     tperiod$CK    = 1.0;

     // path delays
     (CK *> ECK) = (tplh$CK$ECK, tphl$CK$ECK);

     // timing checks
     $setuphold(posedge CK, negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER, , , dly_CK, dly_E);
     $setuphold(posedge CK, posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER, , , dly_CK, dly_E);
     $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
     $period(negedge CK, tperiod$CK, NOTIFIER);

   endspecify
`endif // functional //

endmodule //ICGX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ICGX1H7L (CK, E, ECK);
input  CK;
input  E;
output ECK;
wire dly_E;
wire dly_CK;

reg NOTIFIER;

buf (dly_E, E);
buf (dly_CK, CK);
ipicg_latchnsr _i0 (P0001,dly_E,dly_CK,1'b1,1'b1,NOTIFIER);
and _i1 (ECK,dly_CK,P0001);

`ifdef functional  //  functional //
`else
   specify
     specparam
     tplh$CK$ECK   = 1.0,
     tphl$CK$ECK   = 1.0,
     tsetup$E$CK = 1.0,
     thold$E$CK  = 0.5,
     tminpwl$CK    = 1.0,
     tperiod$CK    = 1.0;

     // path delays
     (CK *> ECK) = (tplh$CK$ECK, tphl$CK$ECK);

     // timing checks
     $setuphold(posedge CK, negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER, , , dly_CK, dly_E);
     $setuphold(posedge CK, posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER, , , dly_CK, dly_E);
     $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
     $period(negedge CK, tperiod$CK, NOTIFIER);

   endspecify
`endif // functional //

endmodule //ICGX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ICGX2H7L (CK, E, ECK);
input  CK;
input  E;
output ECK;
wire dly_E;
wire dly_CK;

reg NOTIFIER;

buf (dly_E, E);
buf (dly_CK, CK);
ipicg_latchnsr _i0 (P0001,dly_E,dly_CK,1'b1,1'b1,NOTIFIER);
and _i1 (ECK,dly_CK,P0001);

`ifdef functional  //  functional //
`else
   specify
     specparam
     tplh$CK$ECK   = 1.0,
     tphl$CK$ECK   = 1.0,
     tsetup$E$CK = 1.0,
     thold$E$CK  = 0.5,
     tminpwl$CK    = 1.0,
     tperiod$CK    = 1.0;

     // path delays
     (CK *> ECK) = (tplh$CK$ECK, tphl$CK$ECK);

     // timing checks
     $setuphold(posedge CK, negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER, , , dly_CK, dly_E);
     $setuphold(posedge CK, posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER, , , dly_CK, dly_E);
     $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
     $period(negedge CK, tperiod$CK, NOTIFIER);

   endspecify
`endif // functional //

endmodule //ICGX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ICGX3H7L (CK, E, ECK);
input  CK;
input  E;
output ECK;
wire dly_E;
wire dly_CK;

reg NOTIFIER;

buf (dly_E, E);
buf (dly_CK, CK);
ipicg_latchnsr _i0 (P0001,dly_E,dly_CK,1'b1,1'b1,NOTIFIER);
and _i1 (ECK,dly_CK,P0001);

`ifdef functional  //  functional //
`else
   specify
     specparam
     tplh$CK$ECK   = 1.0,
     tphl$CK$ECK   = 1.0,
     tsetup$E$CK = 1.0,
     thold$E$CK  = 0.5,
     tminpwl$CK    = 1.0,
     tperiod$CK    = 1.0;

     // path delays
     (CK *> ECK) = (tplh$CK$ECK, tphl$CK$ECK);

     // timing checks
     $setuphold(posedge CK, negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER, , , dly_CK, dly_E);
     $setuphold(posedge CK, posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER, , , dly_CK, dly_E);
     $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
     $period(negedge CK, tperiod$CK, NOTIFIER);

   endspecify
`endif // functional //

endmodule //ICGX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module ICGX4H7L (CK, E, ECK);
input  CK;
input  E;
output ECK;
wire dly_E;
wire dly_CK;

reg NOTIFIER;

buf (dly_E, E);
buf (dly_CK, CK);
ipicg_latchnsr _i0 (P0001,dly_E,dly_CK,1'b1,1'b1,NOTIFIER);
and _i1 (ECK,dly_CK,P0001);

`ifdef functional  //  functional //
`else
   specify
     specparam
     tplh$CK$ECK   = 1.0,
     tphl$CK$ECK   = 1.0,
     tsetup$E$CK = 1.0,
     thold$E$CK  = 0.5,
     tminpwl$CK    = 1.0,
     tperiod$CK    = 1.0;

     // path delays
     (CK *> ECK) = (tplh$CK$ECK, tphl$CK$ECK);

     // timing checks
     $setuphold(posedge CK, negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER, , , dly_CK, dly_E);
     $setuphold(posedge CK, posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER, , , dly_CK, dly_E);
     $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
     $period(negedge CK, tperiod$CK, NOTIFIER);

   endspecify
`endif // functional //

endmodule //ICGX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX0P5H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX0P7H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX10H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX10H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX12H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX12H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX16H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX16H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX1H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX1P4H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX20H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX20H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX2H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX2P5H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX2P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX3H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX3P5H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX3P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX4H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX5H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX6H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX7H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module INVX8H7L (Y,A);
output Y;
input A;

  not I0(Y, A);



`ifdef functional // functional //
`else // functional //
specify
(A => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //INVX8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATHRX0P5H7L (D, RN, G, Q, QN);
  input D, RN, G;
  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

not      I3(clk,G);
buf      XX0 (xRN,RN);
udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);

assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_RN,RN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc G --> QN
	(posedge G => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $setuphold(negedge G &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge G,1.0,0,NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATHRX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATHRX1H7L (D, RN, G, Q, QN);
  input D, RN, G;
  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

not      I3(clk,G);
buf      XX0 (xRN,RN);
udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);

assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_RN,RN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc G --> QN
	(posedge G => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $setuphold(negedge G &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge G,1.0,0,NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATHRX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATHRX2H7L (D, RN, G, Q, QN);
  input D, RN, G;
  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

not      I3(clk,G);
buf      XX0 (xRN,RN);
udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);

assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_RN,RN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc G --> QN
	(posedge G => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $setuphold(negedge G &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge G,1.0,0,NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATHRX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATHSRX0P5H7L (D, RN, SN, G, Q, QN);
  input D, RN, SN, G;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SN;
wire ENABLE_NOT_D_AND_RN;

  buf       XX0 (xSN,SN);
  buf       XX1 (xRN,RN);
  not I3(clk,G);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D_AND_SN = ( D & SN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RN = ( !D & RN ) ? 1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    and ET_I6(ENABLE_RN_AND_SN,RN,SN);

    buf ET_I7(ENABLE_SN,SN);

    buf ET_I8(ENABLE_RN,RN);

    not ET_I9(ENABLE_NOT_G,G);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc G --> QN
	(posedge G => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(negedge G &&& (ENABLE_RN_AND_SN === 1'b1),
            negedge D &&& (ENABLE_RN_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_RN_AND_SN === 1'b1),
            posedge D &&& (ENABLE_RN_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge G,1.0,0,NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_D_AND_SN === 1'b1),
            posedge RN &&& (ENABLE_D_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_NOT_D_AND_RN === 1'b1),
            posedge SN &&& (ENABLE_NOT_D_AND_RN === 1'b1), 1.0, 1.0, NOTIFIER);


//        $setuphold(posedge RN &&& (ENABLE_NOT_G === 1'b1),
//            posedge SN &&& (ENABLE_NOT_G === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //LATHSRX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATHSRX1H7L (D, RN, SN, G, Q, QN);
  input D, RN, SN, G;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SN;
wire ENABLE_NOT_D_AND_RN;

  buf       XX0 (xSN,SN);
  buf       XX1 (xRN,RN);
  not I3(clk,G);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D_AND_SN = ( D & SN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RN = ( !D & RN ) ? 1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    and ET_I6(ENABLE_RN_AND_SN,RN,SN);

    buf ET_I7(ENABLE_SN,SN);

    buf ET_I8(ENABLE_RN,RN);

    not ET_I9(ENABLE_NOT_G,G);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc G --> QN
	(posedge G => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(negedge G &&& (ENABLE_RN_AND_SN === 1'b1),
            negedge D &&& (ENABLE_RN_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_RN_AND_SN === 1'b1),
            posedge D &&& (ENABLE_RN_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge G,1.0,0,NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_D_AND_SN === 1'b1),
            posedge RN &&& (ENABLE_D_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_NOT_D_AND_RN === 1'b1),
            posedge SN &&& (ENABLE_NOT_D_AND_RN === 1'b1), 1.0, 1.0, NOTIFIER);


//        $setuphold(posedge RN &&& (ENABLE_NOT_G === 1'b1),
//            posedge SN &&& (ENABLE_NOT_G === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //LATHSRX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATHSRX2H7L (D, RN, SN, G, Q, QN);
  input D, RN, SN, G;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SN;
wire ENABLE_NOT_D_AND_RN;

  buf       XX0 (xSN,SN);
  buf       XX1 (xRN,RN);
  not I3(clk,G);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D_AND_SN = ( D & SN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RN = ( !D & RN ) ? 1'b1:1'b0;


  `ifdef functional // functional //

  `else // functional //
    and ET_I6(ENABLE_RN_AND_SN,RN,SN);

    buf ET_I7(ENABLE_SN,SN);

    buf ET_I8(ENABLE_RN,RN);

    not ET_I9(ENABLE_NOT_G,G);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc G --> QN
	(posedge G => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b1 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(negedge G &&& (ENABLE_RN_AND_SN === 1'b1),
            negedge D &&& (ENABLE_RN_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_RN_AND_SN === 1'b1),
            posedge D &&& (ENABLE_RN_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge G,1.0,0,NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_D_AND_SN === 1'b1),
            posedge RN &&& (ENABLE_D_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_NOT_D_AND_RN === 1'b1),
            posedge SN &&& (ENABLE_NOT_D_AND_RN === 1'b1), 1.0, 1.0, NOTIFIER);


//        $setuphold(posedge RN &&& (ENABLE_NOT_G === 1'b1),
//            posedge SN &&& (ENABLE_NOT_G === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //LATHSRX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATHSX0P5H7L (D, SN, G, Q, QN);
  input D, SN, G;
  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  not      I3 (clk,G);
  buf      XX0 (xSN,SN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_SN,SN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc G --> QN
	(posedge G => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(negedge G &&& (ENABLE_SN === 1'b1),
            negedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_SN === 1'b1),
            posedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge G,1.0,0,NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_NOT_D === 1'b1), posedge SN &&& (ENABLE_NOT_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //LATHSX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATHSX1H7L (D, SN, G, Q, QN);
  input D, SN, G;
  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  not      I3 (clk,G);
  buf      XX0 (xSN,SN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_SN,SN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc G --> QN
	(posedge G => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(negedge G &&& (ENABLE_SN === 1'b1),
            negedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_SN === 1'b1),
            posedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge G,1.0,0,NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_NOT_D === 1'b1), posedge SN &&& (ENABLE_NOT_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //LATHSX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATHSX2H7L (D, SN, G, Q, QN);
  input D, SN, G;
  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;

  not      I3 (clk,G);
  buf      XX0 (xSN,SN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I5(ENABLE_SN,SN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc G --> QN
	(posedge G => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && G===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && G===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && G===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(negedge G &&& (ENABLE_SN === 1'b1),
            negedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_SN === 1'b1),
            posedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge G,1.0,0,NOTIFIER);

        $setuphold(negedge G &&& (ENABLE_NOT_D === 1'b1), posedge SN &&& (ENABLE_NOT_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //LATHSX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATHX0P5H7L (Q, QN, D, G);
input D, G;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;

  not I3(clk,G);
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc G --> QN
	(posedge G => (QN : D))  = (1.0,1.0);

        $setuphold(negedge G, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(negedge G, posedge D, 1.0, 1.0, NOTIFIER);



        $width(posedge G,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATHX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATHX1H7L (Q, QN, D, G);
input D, G;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;

  not I3(clk,G);
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc G --> QN
	(posedge G => (QN : D))  = (1.0,1.0);

        $setuphold(negedge G, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(negedge G, posedge D, 1.0, 1.0, NOTIFIER);



        $width(posedge G,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATHX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATHX2H7L (Q, QN, D, G);
input D, G;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;

  not I3(clk,G);
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc G --> QN
	(posedge G => (QN : D))  = (1.0,1.0);

        $setuphold(negedge G, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(negedge G, posedge D, 1.0, 1.0, NOTIFIER);



        $width(posedge G,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATHX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATHX3H7L (Q, QN, D, G);
input D, G;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;

  not I3(clk,G);
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc G --> QN
	(posedge G => (QN : D))  = (1.0,1.0);

        $setuphold(negedge G, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(negedge G, posedge D, 1.0, 1.0, NOTIFIER);



        $width(posedge G,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATHX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATHX4H7L (Q, QN, D, G);
input D, G;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;

  not I3(clk,G);
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc G --> QN
	(posedge G => (QN : D))  = (1.0,1.0);

        $setuphold(negedge G, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(negedge G, posedge D, 1.0, 1.0, NOTIFIER);



        $width(posedge G,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATHX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATLRX0P5H7L (D, RN, GN, Q, QN);
  input D, RN, GN;
  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf      I3 (clk,GN);
  buf       XX0 (xRN,RN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I6(ENABLE_RN,RN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc GN --> Q
	(negedge GN => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc GN --> QN
	(negedge GN => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $setuphold(posedge GN &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge GN,1.0,0,NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATLRX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATLRX1H7L (D, RN, GN, Q, QN);
  input D, RN, GN;
  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf      I3 (clk,GN);
  buf       XX0 (xRN,RN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I6(ENABLE_RN,RN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc GN --> Q
	(negedge GN => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc GN --> QN
	(negedge GN => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $setuphold(posedge GN &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge GN,1.0,0,NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATLRX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATLRX2H7L (D, RN, GN, Q, QN);
  input D, RN, GN;
  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D;

  buf      I3 (clk,GN);
  buf       XX0 (xRN,RN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D= (D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I6(ENABLE_RN,RN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc GN --> Q
	(negedge GN => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc GN --> QN
	(negedge GN => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $setuphold(posedge GN &&& (ENABLE_RN === 1'b1),
            negedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_RN === 1'b1),
            posedge D &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge GN,1.0,0,NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_D === 1'b1), posedge RN &&& (ENABLE_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATLRX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATLSRX0P5H7L (D, RN, SN, GN, Q, QN);
  input D, RN, SN, GN;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SN;
wire ENABLE_NOT_D_AND_RN;

  buf      I3 (clk,GN);
  buf      XX0 (xSN,SN);
  buf      XX1 (xRN,RN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D_AND_SN = ( D & SN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RN = ( !D & RN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and ET_I7(ENABLE_RN_AND_SN,RN,SN);

    buf ET_I8(ENABLE_SN,SN);

    buf ET_I9(ENABLE_RN,RN);

    buf ET_I10(ENABLE_GN,GN);

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc GN --> Q
	(negedge GN => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc GN --> QN
	(negedge GN => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(posedge GN &&& (ENABLE_RN_AND_SN === 1'b1),
            negedge D &&& (ENABLE_RN_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_RN_AND_SN === 1'b1),
            posedge D &&& (ENABLE_RN_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge GN,1.0,0,NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_D_AND_SN === 1'b1),
            posedge RN &&& (ENABLE_D_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_NOT_D_AND_RN === 1'b1),
            posedge SN &&& (ENABLE_NOT_D_AND_RN === 1'b1), 1.0, 1.0, NOTIFIER);


//        $setuphold(posedge RN &&& (ENABLE_GN === 1'b1),
//            posedge SN &&& (ENABLE_GN === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //LATLSRX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATLSRX1H7L (D, RN, SN, GN, Q, QN);
  input D, RN, SN, GN;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SN;
wire ENABLE_NOT_D_AND_RN;

  buf      I3 (clk,GN);
  buf      XX0 (xSN,SN);
  buf      XX1 (xRN,RN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D_AND_SN = ( D & SN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RN = ( !D & RN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and ET_I7(ENABLE_RN_AND_SN,RN,SN);

    buf ET_I8(ENABLE_SN,SN);

    buf ET_I9(ENABLE_RN,RN);

    buf ET_I10(ENABLE_GN,GN);

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc GN --> Q
	(negedge GN => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc GN --> QN
	(negedge GN => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(posedge GN &&& (ENABLE_RN_AND_SN === 1'b1),
            negedge D &&& (ENABLE_RN_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_RN_AND_SN === 1'b1),
            posedge D &&& (ENABLE_RN_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge GN,1.0,0,NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_D_AND_SN === 1'b1),
            posedge RN &&& (ENABLE_D_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_NOT_D_AND_RN === 1'b1),
            posedge SN &&& (ENABLE_NOT_D_AND_RN === 1'b1), 1.0, 1.0, NOTIFIER);


//        $setuphold(posedge RN &&& (ENABLE_GN === 1'b1),
//            posedge SN &&& (ENABLE_GN === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //LATLSRX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATLSRX2H7L (D, RN, SN, GN, Q, QN);
  input D, RN, SN, GN;

  output Q, QN;
  reg NOTIFIER;

wire ENABLE_D_AND_SN;
wire ENABLE_NOT_D_AND_RN;

  buf      I3 (clk,GN);
  buf      XX0 (xSN,SN);
  buf      XX1 (xRN,RN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_D_AND_SN = ( D & SN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RN = ( !D & RN ) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    and ET_I7(ENABLE_RN_AND_SN,RN,SN);

    buf ET_I8(ENABLE_SN,SN);

    buf ET_I9(ENABLE_RN,RN);

    buf ET_I10(ENABLE_GN,GN);

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc GN --> Q
	(negedge GN => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1 && RN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1 && RN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc GN --> QN
	(negedge GN => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b0 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1 && RN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1 && RN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(posedge GN &&& (ENABLE_RN_AND_SN === 1'b1),
            negedge D &&& (ENABLE_RN_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_RN_AND_SN === 1'b1),
            posedge D &&& (ENABLE_RN_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge GN,1.0,0,NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_D_AND_SN === 1'b1),
            posedge RN &&& (ENABLE_D_AND_SN === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_NOT_D_AND_RN === 1'b1),
            posedge SN &&& (ENABLE_NOT_D_AND_RN === 1'b1), 1.0, 1.0, NOTIFIER);


//        $setuphold(posedge RN &&& (ENABLE_GN === 1'b1),
//            posedge SN &&& (ENABLE_GN === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule //LATLSRX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATLSX0P5H7L (D, SN, GN, Q, QN);
  input D, SN, GN;
  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;


  buf      I3 (clk,GN);
  buf      XX0 (xSN,SN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I6(ENABLE_SN,SN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc GN --> Q
	(negedge GN => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc GN --> QN
	(negedge GN => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(posedge GN &&& (ENABLE_SN === 1'b1),
            negedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_SN === 1'b1),
            posedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge GN,1.0,0,NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_NOT_D === 1'b1), posedge SN &&& (ENABLE_NOT_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATLSX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATLSX1H7L (D, SN, GN, Q, QN);
  input D, SN, GN;
  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;


  buf      I3 (clk,GN);
  buf      XX0 (xSN,SN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I6(ENABLE_SN,SN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc GN --> Q
	(negedge GN => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc GN --> QN
	(negedge GN => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(posedge GN &&& (ENABLE_SN === 1'b1),
            negedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_SN === 1'b1),
            posedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge GN,1.0,0,NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_NOT_D === 1'b1), posedge SN &&& (ENABLE_NOT_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATLSX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATLSX2H7L (D, SN, GN, Q, QN);
  input D, SN, GN;
  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D;


  buf      I3 (clk,GN);
  buf      XX0 (xSN,SN);
  udp_tlat I0 (n0,D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);

  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    buf ET_I6(ENABLE_SN,SN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc GN --> Q
	(negedge GN => (Q : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc GN --> QN
	(negedge GN => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b0 && GN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(D===1'b1 && GN===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $setuphold(posedge GN &&& (ENABLE_SN === 1'b1),
            negedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_SN === 1'b1),
            posedge D &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge GN,1.0,0,NOTIFIER);

        $setuphold(posedge GN &&& (ENABLE_NOT_D === 1'b1), posedge SN &&& (ENABLE_NOT_D === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATLSX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATLX0P5H7L (Q, QN, D, GN);
input D, GN;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;

  buf      I3 (clk, GN);
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc GN --> Q
	(negedge GN => (Q : D))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc GN --> QN
	(negedge GN => (QN : D))  = (1.0,1.0);

        $setuphold(posedge GN, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge GN, posedge D, 1.0, 1.0, NOTIFIER);



        $width(negedge GN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATLX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATLX1H7L (Q, QN, D, GN);
input D, GN;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;

  buf      I3 (clk, GN);
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc GN --> Q
	(negedge GN => (Q : D))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc GN --> QN
	(negedge GN => (QN : D))  = (1.0,1.0);

        $setuphold(posedge GN, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge GN, posedge D, 1.0, 1.0, NOTIFIER);



        $width(negedge GN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATLX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATLX2H7L (Q, QN, D, GN);
input D, GN;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;

  buf      I3 (clk, GN);
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc GN --> Q
	(negedge GN => (Q : D))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc GN --> QN
	(negedge GN => (QN : D))  = (1.0,1.0);

        $setuphold(posedge GN, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge GN, posedge D, 1.0, 1.0, NOTIFIER);



        $width(negedge GN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATLX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATLX3H7L (Q, QN, D, GN);
input D, GN;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;

  buf      I3 (clk, GN);
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc GN --> Q
	(negedge GN => (Q : D))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc GN --> QN
	(negedge GN => (QN : D))  = (1.0,1.0);

        $setuphold(posedge GN, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge GN, posedge D, 1.0, 1.0, NOTIFIER);



        $width(negedge GN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATLX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module LATLX4H7L (Q, QN, D, GN);
input D, GN;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;

  buf      I3 (clk, GN);
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  buf      I1 (Q, n0);
  not      I2 (QN, n0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc GN --> Q
	(negedge GN => (Q : D))  = (1.0,1.0);

	// arc D --> QN
	 (D => QN) = (1.0,1.0);

	// arc GN --> QN
	(negedge GN => (QN : D))  = (1.0,1.0);

        $setuphold(posedge GN, negedge D, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge GN, posedge D, 1.0, 1.0, NOTIFIER);



        $width(negedge GN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //

endmodule //LATLX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MDFFQX0P5H7L (Q, CK, D0, D1, S0);
output Q;
input  D0, D1, S0, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_mux2 I0 (nm, D0, D1, S0);
  udp_dff  I1 (n0, nm, clk, xRN, xSN, NOTIFIER);
  buf      I5 (Q, n0);

wire ENABLE_NOT_S0 ;
wire ENABLE_S0 ;
wire ENABLE_D0_AND_NOT_D1_OR_NOT_D0_AND_D1 ;
assign ENABLE_NOT_S0 = (!S0) ? 1'b1:1'b0;
assign ENABLE_S0 = (S0) ? 1'b1:1'b0;
assign ENABLE_D0_AND_NOT_D1_OR_NOT_D0_AND_D1 = (D0&!D1 | !D0&D1) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK,1.0,0,NOTIFIER);
$width(negedge CK,1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_S0 == 1'b1), posedge D0, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_S0 == 1'b1), negedge D0, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_S0 == 1'b1), posedge D1, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_S0 == 1'b1), negedge D1, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D0_AND_NOT_D1_OR_NOT_D0_AND_D1 == 1'b1), posedge S0, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D0_AND_NOT_D1_OR_NOT_D0_AND_D1 == 1'b1), negedge S0, 1.0, 1.0, NOTIFIER);
if (D0==1'b0 && S0==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D1==1'b0 && S0==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D0==1'b1 && S0==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D1==1'b1 && S0==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //MDFFQX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MDFFQX1H7L (Q, CK, D0, D1, S0);
output Q;
input  D0, D1, S0, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_mux2 I0 (nm, D0, D1, S0);
  udp_dff  I1 (n0, nm, clk, xRN, xSN, NOTIFIER);
  buf      I5 (Q, n0);

wire ENABLE_NOT_S0 ;
wire ENABLE_S0 ;
wire ENABLE_D0_AND_NOT_D1_OR_NOT_D0_AND_D1 ;
assign ENABLE_NOT_S0 = (!S0) ? 1'b1:1'b0;
assign ENABLE_S0 = (S0) ? 1'b1:1'b0;
assign ENABLE_D0_AND_NOT_D1_OR_NOT_D0_AND_D1 = (D0&!D1 | !D0&D1) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK,1.0,0,NOTIFIER);
$width(negedge CK,1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_S0 == 1'b1), posedge D0, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_S0 == 1'b1), negedge D0, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_S0 == 1'b1), posedge D1, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_S0 == 1'b1), negedge D1, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D0_AND_NOT_D1_OR_NOT_D0_AND_D1 == 1'b1), posedge S0, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D0_AND_NOT_D1_OR_NOT_D0_AND_D1 == 1'b1), negedge S0, 1.0, 1.0, NOTIFIER);
if (D0==1'b0 && S0==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D1==1'b0 && S0==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D0==1'b1 && S0==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D1==1'b1 && S0==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //MDFFQX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MDFFQX2H7L (Q, CK, D0, D1, S0);
output Q;
input  D0, D1, S0, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_mux2 I0 (nm, D0, D1, S0);
  udp_dff  I1 (n0, nm, clk, xRN, xSN, NOTIFIER);
  buf      I5 (Q, n0);

wire ENABLE_NOT_S0 ;
wire ENABLE_S0 ;
wire ENABLE_D0_AND_NOT_D1_OR_NOT_D0_AND_D1 ;
assign ENABLE_NOT_S0 = (!S0) ? 1'b1:1'b0;
assign ENABLE_S0 = (S0) ? 1'b1:1'b0;
assign ENABLE_D0_AND_NOT_D1_OR_NOT_D0_AND_D1 = (D0&!D1 | !D0&D1) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK,1.0,0,NOTIFIER);
$width(negedge CK,1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_S0 == 1'b1), posedge D0, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_S0 == 1'b1), negedge D0, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_S0 == 1'b1), posedge D1, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_S0 == 1'b1), negedge D1, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D0_AND_NOT_D1_OR_NOT_D0_AND_D1 == 1'b1), posedge S0, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D0_AND_NOT_D1_OR_NOT_D0_AND_D1 == 1'b1), negedge S0, 1.0, 1.0, NOTIFIER);
if (D0==1'b0 && S0==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D1==1'b0 && S0==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D0==1'b1 && S0==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D1==1'b1 && S0==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //MDFFQX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX2X0P5H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //MUX2X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX2X0P7H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //MUX2X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX2X12H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //MUX2X12H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX2X16H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //MUX2X16H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX2X1H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //MUX2X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX2X1P4H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //MUX2X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX2X2H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //MUX2X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX2X3H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //MUX2X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX2X4H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //MUX2X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX2X6H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //MUX2X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX2X8H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //MUX2X8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX4X0P5H7L (Y, A, B, C, D, S0, S1);
input A, B, C, D, S0, S1;
output Y;


   udp_mux4 (Y, A, B, C, D, S0, S1);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B===1'b0 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// arc A --> Y
	 (A => Y) = (1.0,1.0);





	if(A===1'b0 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// arc B --> Y
	 (B => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	ifnone
	// arc C --> Y
	 (C => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	ifnone
	// arc D --> Y
	 (D => Y) = (1.0,1.0);






	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //MUX4X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX4X0P7H7L (Y, A, B, C, D, S0, S1);
input A, B, C, D, S0, S1;
output Y;


   udp_mux4 (Y, A, B, C, D, S0, S1);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B===1'b0 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// arc A --> Y
	 (A => Y) = (1.0,1.0);





	if(A===1'b0 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// arc B --> Y
	 (B => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	ifnone
	// arc C --> Y
	 (C => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	ifnone
	// arc D --> Y
	 (D => Y) = (1.0,1.0);






	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //MUX4X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX4X1H7L (Y, A, B, C, D, S0, S1);
input A, B, C, D, S0, S1;
output Y;


   udp_mux4 (Y, A, B, C, D, S0, S1);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B===1'b0 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// arc A --> Y
	 (A => Y) = (1.0,1.0);





	if(A===1'b0 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// arc B --> Y
	 (B => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	ifnone
	// arc C --> Y
	 (C => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	ifnone
	// arc D --> Y
	 (D => Y) = (1.0,1.0);






	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //MUX4X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX4X1P4H7L (Y, A, B, C, D, S0, S1);
input A, B, C, D, S0, S1;
output Y;


   udp_mux4 (Y, A, B, C, D, S0, S1);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B===1'b0 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// arc A --> Y
	 (A => Y) = (1.0,1.0);





	if(A===1'b0 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// arc B --> Y
	 (B => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	ifnone
	// arc C --> Y
	 (C => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	ifnone
	// arc D --> Y
	 (D => Y) = (1.0,1.0);






	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //MUX4X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX4X2H7L (Y, A, B, C, D, S0, S1);
input A, B, C, D, S0, S1;
output Y;


   udp_mux4 (Y, A, B, C, D, S0, S1);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B===1'b0 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// arc A --> Y
	 (A => Y) = (1.0,1.0);





	if(A===1'b0 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// arc B --> Y
	 (B => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	ifnone
	// arc C --> Y
	 (C => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	ifnone
	// arc D --> Y
	 (D => Y) = (1.0,1.0);






	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //MUX4X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX4X3H7L (Y, A, B, C, D, S0, S1);
input A, B, C, D, S0, S1;
output Y;


   udp_mux4 (Y, A, B, C, D, S0, S1);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B===1'b0 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// arc A --> Y
	 (A => Y) = (1.0,1.0);





	if(A===1'b0 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// arc B --> Y
	 (B => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	ifnone
	// arc C --> Y
	 (C => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	ifnone
	// arc D --> Y
	 (D => Y) = (1.0,1.0);






	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //MUX4X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX4X4H7L (Y, A, B, C, D, S0, S1);
input A, B, C, D, S0, S1;
output Y;


   udp_mux4 (Y, A, B, C, D, S0, S1);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B===1'b0 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// arc A --> Y
	 (A => Y) = (1.0,1.0);





	if(A===1'b0 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// arc B --> Y
	 (B => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	ifnone
	// arc C --> Y
	 (C => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	ifnone
	// arc D --> Y
	 (D => Y) = (1.0,1.0);






	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //MUX4X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUX4X6H7L (Y, A, B, C, D, S0, S1);
input A, B, C, D, S0, S1;
output Y;


   udp_mux4 (Y, A, B, C, D, S0, S1);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B===1'b0 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// arc A --> Y
	 (A => Y) = (1.0,1.0);





	if(A===1'b0 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// arc B --> Y
	 (B => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	ifnone
	// arc C --> Y
	 (C => Y) = (1.0,1.0);





	if(A===1'b0 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// arc D --> Y
	 (D => Y) = (1.0,1.0);

	ifnone
	// arc D --> Y
	 (D => Y) = (1.0,1.0);






	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// arc S1 --> Y
	 (S1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //MUX4X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUXI2X0P5H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

`ifdef functional // functional //
`else // functional //

specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);

endspecify

`endif // functional //
endmodule //MUXI2X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUXI2X0P7H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

`ifdef functional // functional //
`else // functional //

specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);

endspecify

`endif // functional //
endmodule //MUXI2X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUXI2X1H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

`ifdef functional // functional //
`else // functional //

specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);

endspecify

`endif // functional //
endmodule //MUXI2X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUXI2X1P4H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

`ifdef functional // functional //
`else // functional //

specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);

endspecify

`endif // functional //
endmodule //MUXI2X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUXI2X2H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

`ifdef functional // functional //
`else // functional //

specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);

endspecify

`endif // functional //
endmodule //MUXI2X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUXI2X3H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

`ifdef functional // functional //
`else // functional //

specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);

endspecify

`endif // functional //
endmodule //MUXI2X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module MUXI2X4H7L (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

`ifdef functional // functional //
`else // functional //

specify
if (B==1'b0 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && S0==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && S0==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(S0 => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(S0 => Y) = (1.0,1.0);

endspecify

`endif // functional //
endmodule //MUXI2X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2BX0P5H7L (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2BX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2BX0P7H7L (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2BX0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2BX12H7L (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2BX12H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2BX16H7L (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2BX16H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2BX1H7L (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2BX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2BX1P4H7L (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2BX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2BX2H7L (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2BX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2BX3H7L (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2BX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2BX4H7L (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2BX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2BX6H7L (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2BX6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2BX8H7L (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2BX8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2X0P5H7L (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2X0P7H7L (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2X12H7L (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2X12H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2X16H7L (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2X16H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2X1H7L (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2X1P4H7L (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2X2H7L (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2X3H7L (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2X4H7L (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2X6H7L (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND2X8H7L (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND2X8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BBX0P5H7L (Y, AN, BN, C);
input AN, BN, C;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);





  endspecify

  `endif // functional //

endmodule //NAND3BBX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BBX0P7H7L (Y, AN, BN, C);
input AN, BN, C;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);





  endspecify

  `endif // functional //

endmodule //NAND3BBX0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BBX1H7L (Y, AN, BN, C);
input AN, BN, C;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);





  endspecify

  `endif // functional //

endmodule //NAND3BBX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BBX1P4H7L (Y, AN, BN, C);
input AN, BN, C;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);





  endspecify

  `endif // functional //

endmodule //NAND3BBX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BBX2H7L (Y, AN, BN, C);
input AN, BN, C;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);





  endspecify

  `endif // functional //

endmodule //NAND3BBX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BBX3H7L (Y, AN, BN, C);
input AN, BN, C;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);





  endspecify

  `endif // functional //

endmodule //NAND3BBX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BBX4H7L (Y, AN, BN, C);
input AN, BN, C;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);





  endspecify

  `endif // functional //

endmodule //NAND3BBX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BBX6H7L (Y, AN, BN, C);
input AN, BN, C;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);





  endspecify

  `endif // functional //

endmodule //NAND3BBX6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BX0P5H7L (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nand (Y, Ax, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3BX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BX0P7H7L (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nand (Y, Ax, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3BX0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BX1H7L (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nand (Y, Ax, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3BX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BX1P4H7L (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nand (Y, Ax, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3BX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BX2H7L (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nand (Y, Ax, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3BX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BX3H7L (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nand (Y, Ax, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3BX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BX4H7L (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nand (Y, Ax, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3BX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3BX6H7L (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nand (Y, Ax, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3BX6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3X0P5H7L (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3X0P7H7L (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3X1H7L (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3X1P4H7L (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3X2H7L (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3X3H7L (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3X4H7L (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3X6H7L (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND3X8H7L (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND3X8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BBX0P5H7L ( Y, AN, BN, C, D);
input AN, BN, C, D;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C, D);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);








  endspecify

  `endif // functional //
endmodule //NAND4BBX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BBX0P7H7L ( Y, AN, BN, C, D);
input AN, BN, C, D;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C, D);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);








  endspecify

  `endif // functional //
endmodule //NAND4BBX0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BBX1H7L ( Y, AN, BN, C, D);
input AN, BN, C, D;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C, D);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);








  endspecify

  `endif // functional //
endmodule //NAND4BBX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BBX1P4H7L ( Y, AN, BN, C, D);
input AN, BN, C, D;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C, D);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);








  endspecify

  `endif // functional //
endmodule //NAND4BBX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BBX2H7L ( Y, AN, BN, C, D);
input AN, BN, C, D;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C, D);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);








  endspecify

  `endif // functional //
endmodule //NAND4BBX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BBX3H7L ( Y, AN, BN, C, D);
input AN, BN, C, D;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C, D);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);








  endspecify

  `endif // functional //
endmodule //NAND4BBX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BBX4H7L ( Y, AN, BN, C, D);
input AN, BN, C, D;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C, D);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);








  endspecify

  `endif // functional //
endmodule //NAND4BBX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BBX6H7L ( Y, AN, BN, C, D);
input AN, BN, C, D;
output Y;


  not (ANx, AN);
  not (BNx, BN);
  nand (Y, ANx, BNx, C, D);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc BN --> Y
	 (BN => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);








  endspecify

  `endif // functional //
endmodule //NAND4BBX6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BX0P5H7L (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nand (Y, Ax, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4BX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BX0P7H7L (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nand (Y, Ax, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4BX0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BX1H7L (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nand (Y, Ax, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4BX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BX1P4H7L (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nand (Y, Ax, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4BX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BX2H7L (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nand (Y, Ax, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4BX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BX3H7L (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nand (Y, Ax, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4BX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BX4H7L (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nand (Y, Ax, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4BX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4BX6H7L (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nand (Y, Ax, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(AN => Y) = (1.0,1.0);
if (AN==1'b0 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (AN==1'b0 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4BX6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4X0P5H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nand (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4X0P7H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nand (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4X1H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nand (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4X1P4H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nand (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4X2H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nand (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4X3H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nand (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4X4H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nand (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NAND4X6H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nand (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1 && C==1'b1 && D==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1 && D==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && D==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1 && C==1'b1)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NAND4X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR2BX0P5H7L (Z, AN, B);
output Z;
input AN, B;

  not (Ax, AN);
  nor (Z, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(AN => Z) = (1.0,1.0);
if (AN==1'b1)
(B => Z) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2BX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR2BX0P7H7L (Z, AN, B);
output Z;
input AN, B;

  not (Ax, AN);
  nor (Z, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(AN => Z) = (1.0,1.0);
if (AN==1'b1)
(B => Z) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2BX0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR2BX12H7L (Z, AN, B);
output Z;
input AN, B;

  not (Ax, AN);
  nor (Z, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(AN => Z) = (1.0,1.0);
if (AN==1'b1)
(B => Z) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2BX12H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR2BX16H7L (Z, AN, B);
output Z;
input AN, B;

  not (Ax, AN);
  nor (Z, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(AN => Z) = (1.0,1.0);
if (AN==1'b1)
(B => Z) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2BX16H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR2BX1H7L (Z, AN, B);
output Z;
input AN, B;

  not (Ax, AN);
  nor (Z, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(AN => Z) = (1.0,1.0);
if (AN==1'b1)
(B => Z) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2BX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR2BX1P4H7L (Z, AN, B);
output Z;
input AN, B;

  not (Ax, AN);
  nor (Z, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(AN => Z) = (1.0,1.0);
if (AN==1'b1)
(B => Z) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2BX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR2BX2H7L (Z, AN, B);
output Z;
input AN, B;

  not (Ax, AN);
  nor (Z, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(AN => Z) = (1.0,1.0);
if (AN==1'b1)
(B => Z) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2BX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR2BX3H7L (Z, AN, B);
output Z;
input AN, B;

  not (Ax, AN);
  nor (Z, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(AN => Z) = (1.0,1.0);
if (AN==1'b1)
(B => Z) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2BX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR2BX4H7L (Z, AN, B);
output Z;
input AN, B;

  not (Ax, AN);
  nor (Z, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(AN => Z) = (1.0,1.0);
if (AN==1'b1)
(B => Z) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2BX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR2BX6H7L (Z, AN, B);
output Z;
input AN, B;

  not (Ax, AN);
  nor (Z, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(AN => Z) = (1.0,1.0);
if (AN==1'b1)
(B => Z) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2BX6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR2BX8H7L (Z, AN, B);
output Z;
input AN, B;

  not (Ax, AN);
  nor (Z, Ax, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(AN => Z) = (1.0,1.0);
if (AN==1'b1)
(B => Z) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2BX8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR2X0P5H7L (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2X0P5H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module NOR2X0P7H7L (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2X0P7H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module NOR2X12H7L (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2X12H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module NOR2X16H7L (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2X16H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module NOR2X1H7L (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2X1H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module NOR2X1P4H7L (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2X1P4H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module NOR2X2H7L (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2X2H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module NOR2X3H7L (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2X3H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module NOR2X4H7L (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2X4H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module NOR2X6H7L (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2X6H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module NOR2X8H7L (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR2X8H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module NOR3BX0P5H7L ( Y, AN, B, C);
input AN, B, C;
output Y;


   not I0(AN_bar, AN);
   nor I1(Y, AN_bar, B, C);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //NOR3BX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3BX0P7H7L ( Y, AN, B, C);
input AN, B, C;
output Y;


   not I0(AN_bar, AN);
   nor I1(Y, AN_bar, B, C);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //NOR3BX0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3BX1H7L ( Y, AN, B, C);
input AN, B, C;
output Y;


   not I0(AN_bar, AN);
   nor I1(Y, AN_bar, B, C);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //NOR3BX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3BX1P4H7L ( Y, AN, B, C);
input AN, B, C;
output Y;


   not I0(AN_bar, AN);
   nor I1(Y, AN_bar, B, C);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //NOR3BX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3BX2H7L ( Y, AN, B, C);
input AN, B, C;
output Y;


   not I0(AN_bar, AN);
   nor I1(Y, AN_bar, B, C);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //NOR3BX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3BX3H7L ( Y, AN, B, C);
input AN, B, C;
output Y;


   not I0(AN_bar, AN);
   nor I1(Y, AN_bar, B, C);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //NOR3BX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3BX4H7L ( Y, AN, B, C);
input AN, B, C;
output Y;


   not I0(AN_bar, AN);
   nor I1(Y, AN_bar, B, C);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //NOR3BX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3BX6H7L ( Y, AN, B, C);
input AN, B, C;
output Y;


   not I0(AN_bar, AN);
   nor I1(Y, AN_bar, B, C);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc AN --> Y
	 (AN => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);


  endspecify

  `endif // functional //

endmodule //NOR3BX6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3X0P5H7L (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR3X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3X0P7H7L (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR3X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3X1H7L (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR3X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3X1P4H7L (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR3X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3X2H7L (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR3X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3X3H7L (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR3X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3X4H7L (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR3X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3X6H7L (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR3X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR3X8H7L (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //NOR3X8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4BBX0P5H7L (AN, BN, C, D, Y);
output Y;
input AN, BN, C, D;

  not (Bx, BN);
  not (Ax, AN);
  nor (Y, Ax, Bx, C, D);

`ifdef functional // functional //
`else // functional //
  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$BN$Y = 1.0,
      tphl$BN$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (BN *> Y) = (tplh$BN$Y, tphl$BN$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify
`endif // functional //

endmodule //NOR4BBX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4BBX0P7H7L (AN, BN, C, D, Y);
output Y;
input AN, BN, C, D;

  not (Bx, BN);
  not (Ax, AN);
  nor (Y, Ax, Bx, C, D);

`ifdef functional // functional //
`else // functional //
  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$BN$Y = 1.0,
      tphl$BN$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (BN *> Y) = (tplh$BN$Y, tphl$BN$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify
`endif // functional //

endmodule //NOR4BBX0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4BBX1H7L (AN, BN, C, D, Y);
output Y;
input AN, BN, C, D;

  not (Bx, BN);
  not (Ax, AN);
  nor (Y, Ax, Bx, C, D);

`ifdef functional // functional //
`else // functional //
  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$BN$Y = 1.0,
      tphl$BN$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (BN *> Y) = (tplh$BN$Y, tphl$BN$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify
`endif // functional //

endmodule //NOR4BBX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4BBX1P4H7L (AN, BN, C, D, Y);
output Y;
input AN, BN, C, D;

  not (Bx, BN);
  not (Ax, AN);
  nor (Y, Ax, Bx, C, D);

`ifdef functional // functional //
`else // functional //
  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$BN$Y = 1.0,
      tphl$BN$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (BN *> Y) = (tplh$BN$Y, tphl$BN$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify
`endif // functional //

endmodule //NOR4BBX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4BBX2H7L (AN, BN, C, D, Y);
output Y;
input AN, BN, C, D;

  not (Bx, BN);
  not (Ax, AN);
  nor (Y, Ax, Bx, C, D);

`ifdef functional // functional //
`else // functional //
  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$BN$Y = 1.0,
      tphl$BN$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (BN *> Y) = (tplh$BN$Y, tphl$BN$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify
`endif // functional //

endmodule //NOR4BBX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4BBX3H7L (AN, BN, C, D, Y);
output Y;
input AN, BN, C, D;

  not (Bx, BN);
  not (Ax, AN);
  nor (Y, Ax, Bx, C, D);

`ifdef functional // functional //
`else // functional //
  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$BN$Y = 1.0,
      tphl$BN$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (BN *> Y) = (tplh$BN$Y, tphl$BN$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify
`endif // functional //

endmodule //NOR4BBX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4BBX4H7L (AN, BN, C, D, Y);
output Y;
input AN, BN, C, D;

  not (Bx, BN);
  not (Ax, AN);
  nor (Y, Ax, Bx, C, D);

`ifdef functional // functional //
`else // functional //
  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$BN$Y = 1.0,
      tphl$BN$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (BN *> Y) = (tplh$BN$Y, tphl$BN$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify
`endif // functional //

endmodule //NOR4BBX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4BX0P5H7L (AN, B, C, D, Y);
output Y;
input AN, B, C, D;
  not (Ax, AN);
  nor (Y, Ax, B, C, D);

`ifdef functional // functional //
`else // functional //
  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify
`endif // functional //

endmodule //NOR4BX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4BX0P7H7L (AN, B, C, D, Y);
output Y;
input AN, B, C, D;
  not (Ax, AN);
  nor (Y, Ax, B, C, D);

`ifdef functional // functional //
`else // functional //
  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify
`endif // functional //

endmodule //NOR4BX0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4BX1H7L (AN, B, C, D, Y);
output Y;
input AN, B, C, D;
  not (Ax, AN);
  nor (Y, Ax, B, C, D);

`ifdef functional // functional //
`else // functional //
  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify
`endif // functional //

endmodule //NOR4BX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4BX1P4H7L (AN, B, C, D, Z);
output Z;
input AN, B, C, D;
  not (Ax, AN);
  nor (Z, Ax, B, C, D);

`ifdef functional // functional //
`else // functional //
  specify
    // delay parameters
    specparam
      tplh$AN$Z = 1.0,
      tphl$AN$Z = 1.0,
      tplh$B$Z = 1.0,
      tphl$B$Z = 1.0,
      tplh$C$Z = 1.0,
      tphl$C$Z = 1.0,
      tplh$D$Z = 1.0,
      tphl$D$Z = 1.0;

    // path delays
    (AN *> Z) = (tplh$AN$Z, tphl$AN$Z);
    (B *> Z) = (tplh$B$Z, tphl$B$Z);
    (C *> Z) = (tplh$C$Z, tphl$C$Z);
    (D *> Z) = (tplh$D$Z, tphl$D$Z);
  endspecify
`endif // functional //

endmodule //NOR4BX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4BX2H7L (AN, B, C, D, Y);
output Y;
input AN, B, C, D;
  not (Ax, AN);
  nor (Y, Ax, B, C, D);

`ifdef functional // functional //
`else // functional //
  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify
`endif // functional //

endmodule //NOR4BX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4BX3H7L (AN, B, C, D, Y);
output Y;
input AN, B, C, D;
  not (Ax, AN);
  nor (Y, Ax, B, C, D);

`ifdef functional // functional //
`else // functional //
  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify
`endif // functional //

endmodule //NOR4BX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4BX4H7L (AN, B, C, D, Y);
output Y;
input AN, B, C, D;
  not (Ax, AN);
  nor (Y, Ax, B, C, D);

`ifdef functional // functional //
`else // functional //
  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify
`endif // functional //

endmodule //NOR4BX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4X0P5H7L ( Y, A, B, C, D);
input A, B, C, D;
output Y;


   nor I0(Y, A, B, C, D);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //NOR4X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4X0P7H7L ( Y, A, B, C, D);
input A, B, C, D;
output Y;


   nor I0(Y, A, B, C, D);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //NOR4X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4X1H7L ( Y, A, B, C, D);
input A, B, C, D;
output Y;


   nor I0(Y, A, B, C, D);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //NOR4X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4X1P4H7L ( Y, A, B, C, D);
input A, B, C, D;
output Y;


   nor I0(Y, A, B, C, D);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //NOR4X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4X2H7L ( Y, A, B, C, D);
input A, B, C, D;
output Y;


   nor I0(Y, A, B, C, D);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //NOR4X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4X3H7L ( Y, A, B, C, D);
input A, B, C, D;
output Y;


   nor I0(Y, A, B, C, D);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //NOR4X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4X4H7L ( Y, A, B, C, D);
input A, B, C, D;
output Y;


   nor I0(Y, A, B, C, D);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //NOR4X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module NOR4X6H7L ( Y, A, B, C, D);
input A, B, C, D;
output Y;


   nor I0(Y, A, B, C, D);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A --> Y
	 (A => Y) = (1.0,1.0);

	// arc B --> Y
	 (B => Y) = (1.0,1.0);

	// arc C --> Y
	 (C => Y) = (1.0,1.0);

	// arc D --> Y
	 (D => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //NOR4X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA211X0P5H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA211X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA211X0P7H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA211X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA211X1H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA211X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA211X1P4H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA211X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA211X2H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA211X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA211X3H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA211X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA211X4H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA211X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA211X6H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA211X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA21X0P5H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA21X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA21X0P7H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA21X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA21X1H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA21X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA21X1P4H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA21X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA21X2H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA21X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA21X3H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA21X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA21X4H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA21X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA21X6H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA21X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA21X8H7L (Y, A0, A1, B0);
output Y;
input A0, A1, B0;



  or   I0(outA, A0, A1);
  and I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA21X8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA221X0P5H7L ( Y, A0, A1, B0, B1, C0);
input A0, A1, B0, B1, C0;
output Y;


   or  I0(outA, A0, A1);
   or  I1(outB, B0, B1);
   and I2(Y, outA, outB, C0);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA221X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA221X0P7H7L ( Y, A0, A1, B0, B1, C0);
input A0, A1, B0, B1, C0;
output Y;


   or  I0(outA, A0, A1);
   or  I1(outB, B0, B1);
   and I2(Y, outA, outB, C0);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA221X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA221X1H7L ( Y, A0, A1, B0, B1, C0);
input A0, A1, B0, B1, C0;
output Y;


   or  I0(outA, A0, A1);
   or  I1(outB, B0, B1);
   and I2(Y, outA, outB, C0);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA221X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA221X1P4H7L ( Y, A0, A1, B0, B1, C0);
input A0, A1, B0, B1, C0;
output Y;


   or  I0(outA, A0, A1);
   or  I1(outB, B0, B1);
   and I2(Y, outA, outB, C0);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA221X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA221X2H7L ( Y, A0, A1, B0, B1, C0);
input A0, A1, B0, B1, C0;
output Y;


   or  I0(outA, A0, A1);
   or  I1(outB, B0, B1);
   and I2(Y, outA, outB, C0);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA221X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA221X3H7L ( Y, A0, A1, B0, B1, C0);
input A0, A1, B0, B1, C0;
output Y;


   or  I0(outA, A0, A1);
   or  I1(outB, B0, B1);
   and I2(Y, outA, outB, C0);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA221X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA221X4H7L ( Y, A0, A1, B0, B1, C0);
input A0, A1, B0, B1, C0;
output Y;


   or  I0(outA, A0, A1);
   or  I1(outB, B0, B1);
   and I2(Y, outA, outB, C0);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA221X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA222X0P5H7L ( Y, A0, A1, B0, B1, C0, C1);
input A0, A1, B0, B1, C0, C1;
output Y;


   or  I0(outA, A0, A1);
   or  I1(outB, B0, B1);
   or  I2(outC, C0, C1);
   and I3(Y, outA, outB, outC);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA222X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA222X0P7H7L ( Y, A0, A1, B0, B1, C0, C1);
input A0, A1, B0, B1, C0, C1;
output Y;


   or  I0(outA, A0, A1);
   or  I1(outB, B0, B1);
   or  I2(outC, C0, C1);
   and I3(Y, outA, outB, outC);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA222X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA222X1H7L ( Y, A0, A1, B0, B1, C0, C1);
input A0, A1, B0, B1, C0, C1;
output Y;


   or  I0(outA, A0, A1);
   or  I1(outB, B0, B1);
   or  I2(outC, C0, C1);
   and I3(Y, outA, outB, outC);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA222X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA222X1P4H7L ( Y, A0, A1, B0, B1, C0, C1);
input A0, A1, B0, B1, C0, C1;
output Y;


   or  I0(outA, A0, A1);
   or  I1(outB, B0, B1);
   or  I2(outC, C0, C1);
   and I3(Y, outA, outB, outC);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA222X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA222X2H7L ( Y, A0, A1, B0, B1, C0, C1);
input A0, A1, B0, B1, C0, C1;
output Y;


   or  I0(outA, A0, A1);
   or  I1(outB, B0, B1);
   or  I2(outC, C0, C1);
   and I3(Y, outA, outB, outC);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA222X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA222X3H7L ( Y, A0, A1, B0, B1, C0, C1);
input A0, A1, B0, B1, C0, C1;
output Y;


   or  I0(outA, A0, A1);
   or  I1(outB, B0, B1);
   or  I2(outC, C0, C1);
   and I3(Y, outA, outB, outC);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA222X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA222X4H7L ( Y, A0, A1, B0, B1, C0, C1);
input A0, A1, B0, B1, C0, C1;
output Y;


   or  I0(outA, A0, A1);
   or  I1(outB, B0, B1);
   or  I2(outC, C0, C1);
   and I3(Y, outA, outB, outC);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b0 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && C0===1'b1 && C1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b0)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b1 && B1===1'b1)
	// arc C1 --> Y
	 (C1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA222X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA22X0P5H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;
  or  I0(outA, A0, A1);
  or  I1(outB, B0, B1);
  and I2(Y, outA, outB);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA22X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA22X0P7H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;
  or  I0(outA, A0, A1);
  or  I1(outB, B0, B1);
  and I2(Y, outA, outB);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA22X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA22X1H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;
  or  I0(outA, A0, A1);
  or  I1(outB, B0, B1);
  and I2(Y, outA, outB);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA22X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA22X1P4H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;
  or  I0(outA, A0, A1);
  or  I1(outB, B0, B1);
  and I2(Y, outA, outB);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA22X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA22X2H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;
  or  I0(outA, A0, A1);
  or  I1(outB, B0, B1);
  and I2(Y, outA, outB);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA22X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA22X3H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;
  or  I0(outA, A0, A1);
  or  I1(outB, B0, B1);
  and I2(Y, outA, outB);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA22X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA22X4H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;
  or  I0(outA, A0, A1);
  or  I1(outB, B0, B1);
  and I2(Y, outA, outB);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA22X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA22X6H7L ( Y, A0, A1, B0, B1);
input A0, A1, B0, B1;
output Y;
  or  I0(outA, A0, A1);
  or  I1(outB, B0, B1);
  and I2(Y, outA, outB);

`ifdef functional // functional //
`else // functional //
specify
	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OA22X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA31X0P5H7L ( Y, A0, A1, A2, B0);
input A0, A1, A2, B0;
output Y;


    or  I0(outA, A0, A1, A2);
    and I1(Y, outA, B0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA31X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA31X0P7H7L ( Y, A0, A1, A2, B0);
input A0, A1, A2, B0;
output Y;


    or  I0(outA, A0, A1, A2);
    and I1(Y, outA, B0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA31X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA31X1H7L ( Y, A0, A1, A2, B0);
input A0, A1, A2, B0;
output Y;


    or  I0(outA, A0, A1, A2);
    and I1(Y, outA, B0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA31X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA31X1P4H7L ( Y, A0, A1, A2, B0);
input A0, A1, A2, B0;
output Y;


    or  I0(outA, A0, A1, A2);
    and I1(Y, outA, B0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA31X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA31X2H7L ( Y, A0, A1, A2, B0);
input A0, A1, A2, B0;
output Y;


    or  I0(outA, A0, A1, A2);
    and I1(Y, outA, B0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA31X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA31X3H7L ( Y, A0, A1, A2, B0);
input A0, A1, A2, B0;
output Y;


    or  I0(outA, A0, A1, A2);
    and I1(Y, outA, B0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA31X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OA31X4H7L ( Y, A0, A1, A2, B0);
input A0, A1, A2, B0;
output Y;


    or  I0(outA, A0, A1, A2);
    and I1(Y, outA, B0);


  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OA31X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI211X0P5H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  nand I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI211X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI211X0P7H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  nand I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI211X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI211X1H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  nand I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI211X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI211X1P4H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  nand I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI211X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI211X2H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  nand I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI211X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI211X3H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  nand I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI211X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI211X4H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  nand I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI211X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI211X6H7L (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;



  or   I0(outA, A0, A1);
  nand I1(Y, B0, C0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI211X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21BX0P5H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  not  I0 (outB, B0N);
  or   I1 (outA, A0,  A1);
  nand I2 (Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0N==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0N==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI21BX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21BX0P7H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  not  I0 (outB, B0N);
  or   I1 (outA, A0,  A1);
  nand I2 (Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0N==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0N==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI21BX0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21BX1H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  not  I0 (outB, B0N);
  or   I1 (outA, A0,  A1);
  nand I2 (Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0N==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0N==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI21BX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21BX1P4H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  not  I0 (outB, B0N);
  or   I1 (outA, A0,  A1);
  nand I2 (Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0N==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0N==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI21BX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21BX2H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  not  I0 (outB, B0N);
  or   I1 (outA, A0,  A1);
  nand I2 (Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0N==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0N==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI21BX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21BX3H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  not  I0 (outB, B0N);
  or   I1 (outA, A0,  A1);
  nand I2 (Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0N==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0N==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI21BX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21BX4H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  not  I0 (outB, B0N);
  or   I1 (outA, A0,  A1);
  nand I2 (Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0N==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0N==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI21BX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21BX6H7L (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;



  not  I0 (outB, B0N);
  or   I1 (outA, A0,  A1);
  nand I2 (Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0N==1'b0)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0N==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0)
(B0N => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1)
(B0N => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI21BX6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21X0P5H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;
  or   I0(outA, A0, A1);
  nand I1(Y, outA, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);
endspecify
`endif // functional //
endmodule //OAI21X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21X0P7H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;
  or   I0(outA, A0, A1);
  nand I1(Y, outA, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);
endspecify
`endif // functional //
endmodule //OAI21X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21X1H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;
  or   I0(outA, A0, A1);
  nand I1(Y, outA, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);
endspecify
`endif // functional //
endmodule //OAI21X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21X1P4H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;
  or   I0(outA, A0, A1);
  nand I1(Y, outA, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);
endspecify
`endif // functional //
endmodule //OAI21X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21X2H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;
  or   I0(outA, A0, A1);
  nand I1(Y, outA, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);
endspecify
`endif // functional //
endmodule //OAI21X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21X3H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;
  or   I0(outA, A0, A1);
  nand I1(Y, outA, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);
endspecify
`endif // functional //
endmodule //OAI21X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21X4H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;
  or   I0(outA, A0, A1);
  nand I1(Y, outA, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);
endspecify
`endif // functional //
endmodule //OAI21X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21X6H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;
  or   I0(outA, A0, A1);
  nand I1(Y, outA, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);
endspecify
`endif // functional //
endmodule //OAI21X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI21X8H7L (Y, A0, A1, B0);
input A0, A1, B0;
output Y;
  or   I0(outA, A0, A1);
  nand I1(Y, outA, B0);

`ifdef functional // functional //
`else // functional //
specify
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);
endspecify
`endif // functional //
endmodule //OAI21X8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI221X0P5H7L (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, C0, outB, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI221X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI221X0P7H7L (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, C0, outB, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI221X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI221X1H7L (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, C0, outB, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI221X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI221X1P4H7L (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, C0, outB, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI221X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI221X2H7L (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, C0, outB, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI221X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI221X3H7L (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, C0, outB, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI221X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI221X4H7L (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, C0, outB, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1)
(C0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI221X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI222X0P5H7L (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  or   I2(outC, C0, C1);
  nand I3(Y, outA, outB, outC);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI222X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI222X0P7H7L (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  or   I2(outC, C0, C1);
  nand I3(Y, outA, outB, outC);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI222X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI222X1H7L (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  or   I2(outC, C0, C1);
  nand I3(Y, outA, outB, outC);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI222X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI222X1P4H7L (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  or   I2(outC, C0, C1);
  nand I3(Y, outA, outB, outC);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI222X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI222X2H7L (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  or   I2(outC, C0, C1);
  nand I3(Y, outA, outB, outC);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI222X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI222X3H7L (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  or   I2(outC, C0, C1);
  nand I3(Y, outA, outB, outC);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI222X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI222X4H7L (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  or   I2(outC, C0, C1);
  nand I3(Y, outA, outB, outC);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b1 && C1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b0 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0 && C0==1'b1 && C1==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b0 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && C0==1'b1 && C1==1'b1)
(B1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C1==1'b0)
(C0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b0 && C0==1'b0)
(C1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b1 && B1==1'b1 && C0==1'b0)
(C1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI222X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI22X0P5H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI22X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI22X0P7H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI22X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI22X1H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI22X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI22X1P4H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI22X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI22X2H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI22X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI22X3H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI22X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI22X4H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI22X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI22X6H7L (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;



  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && B0==1'b0 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b0)
(A0 => Y) = (1.0,1.0);
if (A1==1'b0 && B0==1'b1 && B1==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b0 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b0)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1 && B1==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B1==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && B0==1'b0)
(B1 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && B0==1'b0)
(B1 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI22X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB1X0P5H7L ( Y, A0N, A1N, B0);
input A0N, A1N, B0;
output Y;


  nand I0(outA, A0N, A1N);
  nand I1(Y, outA, B0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB1X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB1X0P7H7L ( Y, A0N, A1N, B0);
input A0N, A1N, B0;
output Y;


  nand I0(outA, A0N, A1N);
  nand I1(Y, outA, B0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB1X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB1X1H7L ( Y, A0N, A1N, B0);
input A0N, A1N, B0;
output Y;


  nand I0(outA, A0N, A1N);
  nand I1(Y, outA, B0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB1X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB1X1P4H7L ( Y, A0N, A1N, B0);
input A0N, A1N, B0;
output Y;


  nand I0(outA, A0N, A1N);
  nand I1(Y, outA, B0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB1X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB1X2H7L ( Y, A0N, A1N, B0);
input A0N, A1N, B0;
output Y;


  nand I0(outA, A0N, A1N);
  nand I1(Y, outA, B0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB1X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB1X3H7L ( Y, A0N, A1N, B0);
input A0N, A1N, B0;
output Y;


  nand I0(outA, A0N, A1N);
  nand I1(Y, outA, B0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB1X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB1X4H7L ( Z, A0N, A1N, B0);
input A0N, A1N, B0;
output Z;


  nand I0(outA, A0N, A1N);
  nand I1(Z, outA, B0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Z
	 (A0N => Z) = (1.0,1.0);

	// arc A1N --> Z
	 (A1N => Z) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Z
	 (B0 => Z) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Z
	 (B0 => Z) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Z
	 (B0 => Z) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB1X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB1X6H7L ( Y, A0N, A1N, B0);
input A0N, A1N, B0;
output Y;


  nand I0(outA, A0N, A1N);
  nand I1(Y, outA, B0);

  `ifdef functional // functional //

  `else // functional //

  specify


	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB1X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB2X0P5H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


   nand I0(outA, A0N, A1N);
   or   I1(outB, B0, B1);
   nand I2(Y, outA, outB);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB2X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB2X0P7H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


   nand I0(outA, A0N, A1N);
   or   I1(outB, B0, B1);
   nand I2(Y, outA, outB);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB2X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB2X1H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


   nand I0(outA, A0N, A1N);
   or   I1(outB, B0, B1);
   nand I2(Y, outA, outB);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB2X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB2X1P4H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


   nand I0(outA, A0N, A1N);
   or   I1(outB, B0, B1);
   nand I2(Y, outA, outB);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB2X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB2X2H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


   nand I0(outA, A0N, A1N);
   or   I1(outB, B0, B1);
   nand I2(Y, outA, outB);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB2X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB2X3H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


   nand I0(outA, A0N, A1N);
   or   I1(outB, B0, B1);
   nand I2(Y, outA, outB);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB2X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB2X4H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


   nand I0(outA, A0N, A1N);
   or   I1(outB, B0, B1);
   nand I2(Y, outA, outB);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB2X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2BB2X6H7L ( Y, A0N, A1N, B0, B1);
input A0N, A1N, B0, B1;
output Y;


   nand I0(outA, A0N, A1N);
   or   I1(outB, B0, B1);
   nand I2(Y, outA, outB);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0N --> Y
	 (A0N => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1N --> Y
	 (A1N => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b0 && A1N===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0N===1'b1 && A1N===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI2BB2X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2XB1X0P5H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b1 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI2XB1X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2XB1X0P7H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b1 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI2XB1X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2XB1X1H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b1 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI2XB1X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2XB1X1P4H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b1 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI2XB1X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2XB1X2H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b1 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI2XB1X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2XB1X3H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b1 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI2XB1X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2XB1X4H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b1 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI2XB1X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI2XB1X6H7L (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;



  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1N==1'b1 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && B0==1'b1)
(A1N => Y) = (1.0,1.0);
if (A0==1'b0 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1N==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI2XB1X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI31X0P5H7L (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;



  or   I0(outA, A0, A1, A2);
  nand I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && A2==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && A2==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI31X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI31X0P7H7L (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;



  or   I0(outA, A0, A1, A2);
  nand I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && A2==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && A2==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI31X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI31X1H7L (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;



  or   I0(outA, A0, A1, A2);
  nand I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && A2==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && A2==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI31X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI31X1P4H7L (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;



  or   I0(outA, A0, A1, A2);
  nand I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && A2==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && A2==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI31X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI31X2H7L (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;



  or   I0(outA, A0, A1, A2);
  nand I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && A2==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && A2==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI31X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI31X3H7L (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;



  or   I0(outA, A0, A1, A2);
  nand I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && A2==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && A2==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI31X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI31X4H7L (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;



  or   I0(outA, A0, A1, A2);
  nand I1(Y, B0, outA);


`ifdef functional // functional //
`else // functional //
specify
if (A1==1'b0 && A2==1'b0 && B0==1'b1)
(A0 => Y) = (1.0,1.0);
if (A0==1'b0 && A2==1'b0 && B0==1'b1)
(A1 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && B0==1'b1)
(A2 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b0 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b0 && A2==1'b1)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b0)
(B0 => Y) = (1.0,1.0);
if (A0==1'b1 && A1==1'b1 && A2==1'b1)
(B0 => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OAI31X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI32X0P5H7L ( Y, A0, A1, A2, B0, B1);
input A0, A1, A2, B0, B1;
output Y;


   or   I0(outA, A0, A1, A2);
   or   I1(outB, B0, B1);
   nand I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI32X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI32X0P7H7L ( Y, A0, A1, A2, B0, B1);
input A0, A1, A2, B0, B1;
output Y;


   or   I0(outA, A0, A1, A2);
   or   I1(outB, B0, B1);
   nand I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI32X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI32X1H7L ( Y, A0, A1, A2, B0, B1);
input A0, A1, A2, B0, B1;
output Y;


   or   I0(outA, A0, A1, A2);
   or   I1(outB, B0, B1);
   nand I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI32X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI32X1P4H7L ( Y, A0, A1, A2, B0, B1);
input A0, A1, A2, B0, B1;
output Y;


   or   I0(outA, A0, A1, A2);
   or   I1(outB, B0, B1);
   nand I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI32X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI32X2H7L ( Y, A0, A1, A2, B0, B1);
input A0, A1, A2, B0, B1;
output Y;


   or   I0(outA, A0, A1, A2);
   or   I1(outB, B0, B1);
   nand I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI32X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI32X3H7L ( Y, A0, A1, A2, B0, B1);
input A0, A1, A2, B0, B1;
output Y;


   or   I0(outA, A0, A1, A2);
   or   I1(outB, B0, B1);
   nand I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI32X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI32X4H7L ( Y, A0, A1, A2, B0, B1);
input A0, A1, A2, B0, B1;
output Y;


   or   I0(outA, A0, A1, A2);
   or   I1(outB, B0, B1);
   nand I2(Y, outA, outB);


  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI32X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI33X0P5H7L ( Y, A0, A1, A2, B0, B1, B2);
input A0, A1, A2, B0, B1, B2;
output Y;


   or   I0(outA, A0, A1, A2);
   or   I1(outB, B0, B1, B2);
   nand I2(Y, outA, outB);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI33X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI33X0P7H7L ( Y, A0, A1, A2, B0, B1, B2);
input A0, A1, A2, B0, B1, B2;
output Y;


   or   I0(outA, A0, A1, A2);
   or   I1(outB, B0, B1, B2);
   nand I2(Y, outA, outB);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI33X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI33X1H7L ( Y, A0, A1, A2, B0, B1, B2);
input A0, A1, A2, B0, B1, B2;
output Y;


   or   I0(outA, A0, A1, A2);
   or   I1(outB, B0, B1, B2);
   nand I2(Y, outA, outB);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI33X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI33X1P4H7L ( Y, A0, A1, A2, B0, B1, B2);
input A0, A1, A2, B0, B1, B2;
output Y;


   or   I0(outA, A0, A1, A2);
   or   I1(outB, B0, B1, B2);
   nand I2(Y, outA, outB);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI33X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI33X2H7L ( Y, A0, A1, A2, B0, B1, B2);
input A0, A1, A2, B0, B1, B2;
output Y;


   or   I0(outA, A0, A1, A2);
   or   I1(outB, B0, B1, B2);
   nand I2(Y, outA, outB);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI33X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI33X3H7L ( Y, A0, A1, A2, B0, B1, B2);
input A0, A1, A2, B0, B1, B2;
output Y;


   or   I0(outA, A0, A1, A2);
   or   I1(outB, B0, B1, B2);
   nand I2(Y, outA, outB);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI33X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAI33X4H7L ( Y, A0, A1, A2, B0, B1, B2);
input A0, A1, A2, B0, B1, B2;
output Y;


   or   I0(outA, A0, A1, A2);
   or   I1(outB, B0, B1, B2);
   nand I2(Y, outA, outB);

  `ifdef functional // functional //

  `else // functional //

  specify


	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b0 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b0 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b0)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(B0===1'b1 && B1===1'b1 && B2===1'b1)
	// arc A2 --> Y
	 (A2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B1 --> Y
	 (B1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b0)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && A2===1'b1)
	// arc B2 --> Y
	 (B2 => Y) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule //OAI33X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAO211X0P5H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	and ET_I0( Y_row1, A0, B0 );
	and ET_I1( Y_row2, A1, B0 );
	or ET_I2( Y, Y_row1, Y_row2, C0 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //OAO211X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAO211X0P7H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	and ET_I0( Y_row1, A0, B0 );
	and ET_I1( Y_row2, A1, B0 );
	or ET_I2( Y, Y_row1, Y_row2, C0 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //OAO211X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAO211X1H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	and ET_I0( Y_row1, A0, B0 );
	and ET_I1( Y_row2, A1, B0 );
	or ET_I2( Y, Y_row1, Y_row2, C0 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //OAO211X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAO211X1P4H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	and ET_I0( Y_row1, A0, B0 );
	and ET_I1( Y_row2, A1, B0 );
	or ET_I2( Y, Y_row1, Y_row2, C0 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //OAO211X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAO211X2H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	and ET_I0( Y_row1, A0, B0 );
	and ET_I1( Y_row2, A1, B0 );
	or ET_I2( Y, Y_row1, Y_row2, C0 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //OAO211X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAO211X3H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	and ET_I0( Y_row1, A0, B0 );
	and ET_I1( Y_row2, A1, B0 );
	or ET_I2( Y, Y_row1, Y_row2, C0 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //OAO211X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAO211X4H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	and ET_I0( Y_row1, A0, B0 );
	and ET_I1( Y_row2, A1, B0 );
	or ET_I2( Y, Y_row1, Y_row2, C0 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //OAO211X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAOI211X0P5H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	not ET_I0( A0_inv, A0 );
	not ET_I1( A1_inv, A1 );
	not ET_I2( C0_inv, C0 );
	and ET_I3( Y_row1, A0_inv, A1_inv, C0_inv );
	not ET_I4( B0_inv, B0 );
	and ET_I5( Y_row2, B0_inv, C0_inv );
	or ET_I6( Y, Y_row1, Y_row2 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //OAOI211X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAOI211X0P7H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	not ET_I0( A0_inv, A0 );
	not ET_I1( A1_inv, A1 );
	not ET_I2( C0_inv, C0 );
	and ET_I3( Y_row1, A0_inv, A1_inv, C0_inv );
	not ET_I4( B0_inv, B0 );
	and ET_I5( Y_row2, B0_inv, C0_inv );
	or ET_I6( Y, Y_row1, Y_row2 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //OAOI211X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAOI211X1H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	not ET_I0( A0_inv, A0 );
	not ET_I1( A1_inv, A1 );
	not ET_I2( C0_inv, C0 );
	and ET_I3( Y_row1, A0_inv, A1_inv, C0_inv );
	not ET_I4( B0_inv, B0 );
	and ET_I5( Y_row2, B0_inv, C0_inv );
	or ET_I6( Y, Y_row1, Y_row2 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //OAOI211X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAOI211X1P4H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	not ET_I0( A0_inv, A0 );
	not ET_I1( A1_inv, A1 );
	not ET_I2( C0_inv, C0 );
	and ET_I3( Y_row1, A0_inv, A1_inv, C0_inv );
	not ET_I4( B0_inv, B0 );
	and ET_I5( Y_row2, B0_inv, C0_inv );
	or ET_I6( Y, Y_row1, Y_row2 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //OAOI211X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAOI211X2H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	not ET_I0( A0_inv, A0 );
	not ET_I1( A1_inv, A1 );
	not ET_I2( C0_inv, C0 );
	and ET_I3( Y_row1, A0_inv, A1_inv, C0_inv );
	not ET_I4( B0_inv, B0 );
	and ET_I5( Y_row2, B0_inv, C0_inv );
	or ET_I6( Y, Y_row1, Y_row2 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //OAOI211X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAOI211X3H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	not ET_I0( A0_inv, A0 );
	not ET_I1( A1_inv, A1 );
	not ET_I2( C0_inv, C0 );
	and ET_I3( Y_row1, A0_inv, A1_inv, C0_inv );
	not ET_I4( B0_inv, B0 );
	and ET_I5( Y_row2, B0_inv, C0_inv );
	or ET_I6( Y, Y_row1, Y_row2 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //OAOI211X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OAOI211X4H7L ( Y, A0, A1, B0, C0);
input A0, A1, B0, C0;
output Y;

	not ET_I0( A0_inv, A0 );
	not ET_I1( A1_inv, A1 );
	not ET_I2( C0_inv, C0 );
	and ET_I3( Y_row1, A0_inv, A1_inv, C0_inv );
	not ET_I4( B0_inv, B0 );
	and ET_I5( Y_row2, B0_inv, C0_inv );
	or ET_I6( Y, Y_row1, Y_row2 );

   `ifdef functional  //  functional //

   `else




   specify

	// arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	// arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0 && B0===1'b1)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1 && B0===1'b0)
	// arc C0 --> Y
	 (C0 => Y) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule //OAOI211X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR2X0P5H7L (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR2X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR2X0P7H7L (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR2X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR2X12H7L (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR2X12H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR2X16H7L (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR2X16H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR2X1H7L (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR2X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR2X1P4H7L (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR2X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR2X2H7L (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR2X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR2X3H7L (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR2X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR2X4H7L (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR2X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR2X6H7L (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR2X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR2X8H7L (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR2X8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR3X0P5H7L (Y, A, B, C);
output Y;
input A, B, C;

  or (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR3X0P5H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module OR3X0P7H7L (Y, A, B, C);
output Y;
input A, B, C;

  or (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR3X0P7H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module OR3X1H7L (Y, A, B, C);
output Y;
input A, B, C;

  or (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR3X1H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module OR3X1P4H7L (Y, A, B, C);
output Y;
input A, B, C;

  or (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR3X1P4H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module OR3X2H7L (Y, A, B, C);
output Y;
input A, B, C;

  or (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR3X2H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module OR3X3H7L (Y, A, B, C);
output Y;
input A, B, C;

  or (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR3X3H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module OR3X4H7L (Y, A, B, C);
output Y;
input A, B, C;

  or (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR3X4H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module OR3X6H7L (Y, A, B, C);
output Y;
input A, B, C;

  or (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR3X6H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module OR3X8H7L (Y, A, B, C);
output Y;
input A, B, C;

  or (Y, A, B, C);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR3X8H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module OR4X0P5H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  or (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0 && D==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0 && D==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && D==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && C==1'b0)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR4X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR4X0P7H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  or (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0 && D==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0 && D==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && D==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && C==1'b0)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR4X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR4X1H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  or (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0 && D==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0 && D==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && D==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && C==1'b0)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR4X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR4X1P4H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  or (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0 && D==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0 && D==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && D==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && C==1'b0)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR4X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR4X2H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  or (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0 && D==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0 && D==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && D==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && C==1'b0)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR4X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR4X3H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  or (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0 && D==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0 && D==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && D==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && C==1'b0)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR4X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR4X4H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  or (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0 && D==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0 && D==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && D==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && C==1'b0)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR4X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module OR4X6H7L (Y, A, B, C, D);
output Y;
input A, B, C, D;

  or (Y, A, B, C, D);


`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0 && D==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0 && D==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && D==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0 && C==1'b0)
(D => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //OR4X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFNQX1H7L (Q, CKN, D, SE, SI);
output Q;
input D, SI, SE, CKN;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  not     IC (clk, CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);

wire ENABLE_NOT_SE ;
wire ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI ;
wire ENABLE_SE ;
assign ENABLE_NOT_SE = (!SE) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI = (D&!SI | !D&SI) ? 1'b1:1'b0;
assign ENABLE_SE = (SE) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CKN,1.0,0,NOTIFIER);
$width(negedge CKN,1.0,0,NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_NOT_SE == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_NOT_SE == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_SE == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_SE == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
if (D==1'b0 && SI==1'b1)
(negedge CKN => (Q:1'bx)) = (1.0,1.0);
if (SE==1'b0 && SI==1'b0)
(negedge CKN => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 || D==1'b0 && SE==1'b1 && SI==1'b0)
(negedge CKN => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b1)
(negedge CKN => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //SDFFNQX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFNQX2H7L (Q, CKN, D, SE, SI);
output Q;
input D, SI, SE, CKN;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  not     IC (clk, CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);

wire ENABLE_NOT_SE ;
wire ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI ;
wire ENABLE_SE ;
assign ENABLE_NOT_SE = (!SE) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI = (D&!SI | !D&SI) ? 1'b1:1'b0;
assign ENABLE_SE = (SE) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CKN,1.0,0,NOTIFIER);
$width(negedge CKN,1.0,0,NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_NOT_SE == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_NOT_SE == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_SE == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_SE == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
if (D==1'b0 && SI==1'b1)
(negedge CKN => (Q:1'bx)) = (1.0,1.0);
if (SE==1'b0 && SI==1'b0)
(negedge CKN => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 || D==1'b0 && SE==1'b1 && SI==1'b0)
(negedge CKN => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b1)
(negedge CKN => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //SDFFNQX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFNQX3H7L (Q, CKN, D, SE, SI);
output Q;
input D, SI, SE, CKN;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  not     IC (clk, CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);

wire ENABLE_NOT_SE ;
wire ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI ;
wire ENABLE_SE ;
assign ENABLE_NOT_SE = (!SE) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI = (D&!SI | !D&SI) ? 1'b1:1'b0;
assign ENABLE_SE = (SE) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CKN,1.0,0,NOTIFIER);
$width(negedge CKN,1.0,0,NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_NOT_SE == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_NOT_SE == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_SE == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(negedge CKN &&& (ENABLE_SE == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
if (D==1'b0 && SI==1'b1)
(negedge CKN => (Q:1'bx)) = (1.0,1.0);
if (SE==1'b0 && SI==1'b0)
(negedge CKN => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 || D==1'b0 && SE==1'b1 && SI==1'b0)
(negedge CKN => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b1)
(negedge CKN => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //SDFFNQX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFNRX0P5H7L (D, RN, SE, SI, CKN, Q, QN);
  input D, RN, SE, SI, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;

  buf   XX0 (xRN,RN);
  not     IC (clk,CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not ET_I7(SE_bar,SE);
    and ET_I8(ENABLE_RN_AND_NOT_SE,RN, SE_bar);

    buf ET_I9(ENABLE_RN,RN);

    and ET_I10(ENABLE_RN_AND_SE,RN,SE);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), posedge RN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            negedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            posedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_RN_AND_SE === 1'b1),
            negedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN_AND_SE === 1'b1),
            posedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFNRX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFNRX1H7L (D, RN, SE, SI, CKN, Q, QN);
  input D, RN, SE, SI, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;

  buf   XX0 (xRN,RN);
  not     IC (clk,CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not ET_I7(SE_bar,SE);
    and ET_I8(ENABLE_RN_AND_NOT_SE,RN, SE_bar);

    buf ET_I9(ENABLE_RN,RN);

    and ET_I10(ENABLE_RN_AND_SE,RN,SE);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), posedge RN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            negedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            posedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_RN_AND_SE === 1'b1),
            negedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN_AND_SE === 1'b1),
            posedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFNRX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFNRX2H7L (D, RN, SE, SI, CKN, Q, QN);
  input D, RN, SE, SI, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;

  buf   XX0 (xRN,RN);
  not     IC (clk,CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not ET_I7(SE_bar,SE);
    and ET_I8(ENABLE_RN_AND_NOT_SE,RN, SE_bar);

    buf ET_I9(ENABLE_RN,RN);

    and ET_I10(ENABLE_RN_AND_SE,RN,SE);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), posedge RN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            negedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            posedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_RN_AND_SE === 1'b1),
            negedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN_AND_SE === 1'b1),
            posedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFNRX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFNRX3H7L (D, RN, SE, SI, CKN, Q, QN);
  input D, RN, SE, SI, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;

  buf   XX0 (xRN,RN);
  not     IC (clk,CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not ET_I7(SE_bar,SE);
    and ET_I8(ENABLE_RN_AND_NOT_SE,RN, SE_bar);

    buf ET_I9(ENABLE_RN,RN);

    and ET_I10(ENABLE_RN_AND_SE,RN,SE);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), posedge RN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            negedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN === 1'b1),
            posedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_RN_AND_SE === 1'b1),
            negedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RN_AND_SE === 1'b1),
            posedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFNRX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFNSX0P5H7L (D, SN, SE, SI, CKN, Q, QN);
  input D, SN, SE, SI, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI;

  buf   XX0 (xSN,SN);
  not     IC (clk,CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  assign ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI=(!D&!SE|SE&!SI)? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not ET_I7(SE_bar,SE);
    and ET_I8(ENABLE_SN_AND_NOT_SE,SN, SE_bar);

    buf ET_I9(ENABLE_SN,SN);

    and ET_I10(ENABLE_SN_AND_SE,SN,SE);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN_AND_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_SN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN_AND_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_SN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI === 1'b1), posedge SN &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN === 1'b1),
            negedge SE &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN === 1'b1),
            posedge SE &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_SN_AND_SE === 1'b1),
            negedge SI &&& (ENABLE_SN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN_AND_SE === 1'b1),
            posedge SI &&& (ENABLE_SN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFNSX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFNSX1H7L (D, SN, SE, SI, CKN, Q, QN);
  input D, SN, SE, SI, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI;

  buf   XX0 (xSN,SN);
  not     IC (clk,CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  assign ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI=(!D&!SE|SE&!SI)? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not ET_I7(SE_bar,SE);
    and ET_I8(ENABLE_SN_AND_NOT_SE,SN, SE_bar);

    buf ET_I9(ENABLE_SN,SN);

    and ET_I10(ENABLE_SN_AND_SE,SN,SE);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN_AND_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_SN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN_AND_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_SN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI === 1'b1), posedge SN &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN === 1'b1),
            negedge SE &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN === 1'b1),
            posedge SE &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_SN_AND_SE === 1'b1),
            negedge SI &&& (ENABLE_SN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN_AND_SE === 1'b1),
            posedge SI &&& (ENABLE_SN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFNSX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFNSX2H7L (D, SN, SE, SI, CKN, Q, QN);
  input D, SN, SE, SI, CKN;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI;

  buf   XX0 (xSN,SN);
  not     IC (clk,CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  assign ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI=(!D&!SE|SE&!SI)? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not ET_I7(SE_bar,SE);
    and ET_I8(ENABLE_SN_AND_NOT_SE,SN, SE_bar);

    buf ET_I9(ENABLE_SN,SN);

    and ET_I10(ENABLE_SN_AND_SE,SN,SE);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CKN===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN_AND_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_SN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN_AND_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_SN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI === 1'b1), posedge SN &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN === 1'b1),
            negedge SE &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN === 1'b1),
            posedge SE &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_SN_AND_SE === 1'b1),
            negedge SI &&& (ENABLE_SN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SN_AND_SE === 1'b1),
            posedge SI &&& (ENABLE_SN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFNSX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFNX0P5H7L ( Q, QN, CKN, D, SE, SI);
input CKN, D, SE, SI;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;


  not     IC (clk, CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  `ifdef functional // functional //

  `else // functional //
    not ET_I7(ENABLE_NOT_SE, SE);

    buf ET_I8(ENABLE_SE, SE);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN, negedge SE, 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN, posedge SE, 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_SE === 1'b1),
            negedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SE === 1'b1),
            posedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //

endmodule //SDFFNX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFNX1H7L ( Q, QN, CKN, D, SE, SI);
input CKN, D, SE, SI;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;


  not     IC (clk, CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  `ifdef functional // functional //

  `else // functional //
    not ET_I7(ENABLE_NOT_SE, SE);

    buf ET_I8(ENABLE_SE, SE);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN, negedge SE, 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN, posedge SE, 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_SE === 1'b1),
            negedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SE === 1'b1),
            posedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //

endmodule //SDFFNX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFNX2H7L ( Q, QN, CKN, D, SE, SI);
input CKN, D, SE, SI;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;


  not     IC (clk, CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  `ifdef functional // functional //

  `else // functional //
    not ET_I7(ENABLE_NOT_SE, SE);

    buf ET_I8(ENABLE_SE, SE);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN, negedge SE, 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN, posedge SE, 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_SE === 1'b1),
            negedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SE === 1'b1),
            posedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //

endmodule //SDFFNX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFNX3H7L ( Q, QN, CKN, D, SE, SI);
input CKN, D, SE, SI;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;


  not     IC (clk, CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  `ifdef functional // functional //

  `else // functional //
    not ET_I7(ENABLE_NOT_SE, SE);

    buf ET_I8(ENABLE_SE, SE);


  specify


	// arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	// arc CKN --> QN
	(negedge CKN => (QN : D))  = (1.0,1.0);

        $width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN, negedge SE, 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN, posedge SE, 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_SE === 1'b1),
            negedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_SE === 1'b1),
            posedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //

endmodule //SDFFNX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFQX0P5H7L (Q, CK, D, SE, SI);
output Q;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);

wire ENABLE_NOT_SE ;
wire ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI ;
wire ENABLE_SE ;
assign ENABLE_NOT_SE = (!SE) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI = (D&!SI | !D&SI) ? 1'b1:1'b0;
assign ENABLE_SE = (SE) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK,1.0,0,NOTIFIER);
$width(negedge CK,1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
if (D==1'b0 && SI==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (SE==1'b0 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 || D==1'b0 && SE==1'b1 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //SDFFQX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFQX1H7L (Q, CK, D, SE, SI);
output Q;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);

wire ENABLE_NOT_SE ;
wire ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI ;
wire ENABLE_SE ;
assign ENABLE_NOT_SE = (!SE) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI = (D&!SI | !D&SI) ? 1'b1:1'b0;
assign ENABLE_SE = (SE) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK,1.0,0,NOTIFIER);
$width(negedge CK,1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
if (D==1'b0 && SI==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (SE==1'b0 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 || D==1'b0 && SE==1'b1 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //SDFFQX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFQX2H7L (Q, CK, D, SE, SI);
output Q;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);

wire ENABLE_NOT_SE ;
wire ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI ;
wire ENABLE_SE ;
assign ENABLE_NOT_SE = (!SE) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI = (D&!SI | !D&SI) ? 1'b1:1'b0;
assign ENABLE_SE = (SE) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK,1.0,0,NOTIFIER);
$width(negedge CK,1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
if (D==1'b0 && SI==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (SE==1'b0 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 || D==1'b0 && SE==1'b1 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //SDFFQX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFQX3H7L (Q, CK, D, SE, SI);
output Q;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);

wire ENABLE_NOT_SE ;
wire ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI ;
wire ENABLE_SE ;
assign ENABLE_NOT_SE = (!SE) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI = (D&!SI | !D&SI) ? 1'b1:1'b0;
assign ENABLE_SE = (SE) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK,1.0,0,NOTIFIER);
$width(negedge CK,1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_OR_NOT_D_AND_SI == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
if (D==1'b0 && SI==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (SE==1'b0 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 || D==1'b0 && SE==1'b1 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //SDFFQX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFRQX0P5H7L (D, RN, SE, SI, CK, Q);
output Q;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);

wire ENABLE_RN ;
wire ENABLE_RN_AND_NOT_SE ;
wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI ;
wire ENABLE_D_AND_RN_AND_NOT_SI_OR_NOT_D_AND_RN_AND_SI ;
wire ENABLE_RN_AND_SE ;
assign ENABLE_RN = (RN) ? 1'b1:1'b0;
assign ENABLE_RN_AND_NOT_SE = (RN&!SE) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI = (D&!SE | SE&SI) ? 1'b1:1'b0;
assign ENABLE_D_AND_RN_AND_NOT_SI_OR_NOT_D_AND_RN_AND_SI = (D&RN&!SI | !D&RN&SI) ? 1'b1:1'b0;
assign ENABLE_RN_AND_SE = (RN&SE) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //

specify
$width(posedge CK &&& (ENABLE_RN == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_RN == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$recrem(posedge RN, posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);
$width(negedge RN,1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_RN_AND_NOT_SI_OR_NOT_D_AND_RN_AND_SI == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_RN_AND_NOT_SI_OR_NOT_D_AND_RN_AND_SI == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_RN_AND_SE == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_RN_AND_SE == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
if (D==1'b0 && RN==1'b1 && SI==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && RN==1'b1 && SE==1'b0 && SI==1'b1 || D==1'b0 && RN==1'b1 && SE==1'b1 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && RN==1'b1 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (RN==1'b1 && SE==1'b0 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);

endspecify

  `endif // functional //
endmodule //SDFFRQX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFRQX1H7L (D, RN, SE, SI, CK, Q);
output Q;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);

wire ENABLE_RN ;
wire ENABLE_RN_AND_NOT_SE ;
wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI ;
wire ENABLE_D_AND_RN_AND_NOT_SI_OR_NOT_D_AND_RN_AND_SI ;
wire ENABLE_RN_AND_SE ;
assign ENABLE_RN = (RN) ? 1'b1:1'b0;
assign ENABLE_RN_AND_NOT_SE = (RN&!SE) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI = (D&!SE | SE&SI) ? 1'b1:1'b0;
assign ENABLE_D_AND_RN_AND_NOT_SI_OR_NOT_D_AND_RN_AND_SI = (D&RN&!SI | !D&RN&SI) ? 1'b1:1'b0;
assign ENABLE_RN_AND_SE = (RN&SE) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //

specify
$width(posedge CK &&& (ENABLE_RN == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_RN == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$recrem(posedge RN, posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);
$width(negedge RN,1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_RN_AND_NOT_SI_OR_NOT_D_AND_RN_AND_SI == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_RN_AND_NOT_SI_OR_NOT_D_AND_RN_AND_SI == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_RN_AND_SE == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_RN_AND_SE == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
if (D==1'b0 && RN==1'b1 && SI==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && RN==1'b1 && SE==1'b0 && SI==1'b1 || D==1'b0 && RN==1'b1 && SE==1'b1 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && RN==1'b1 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (RN==1'b1 && SE==1'b0 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);

endspecify

  `endif // functional //
endmodule //SDFFRQX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFRQX2H7L (D, RN, SE, SI, CK, Q);
output Q;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);

wire ENABLE_RN ;
wire ENABLE_RN_AND_NOT_SE ;
wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI ;
wire ENABLE_D_AND_RN_AND_NOT_SI_OR_NOT_D_AND_RN_AND_SI ;
wire ENABLE_RN_AND_SE ;
assign ENABLE_RN = (RN) ? 1'b1:1'b0;
assign ENABLE_RN_AND_NOT_SE = (RN&!SE) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI = (D&!SE | SE&SI) ? 1'b1:1'b0;
assign ENABLE_D_AND_RN_AND_NOT_SI_OR_NOT_D_AND_RN_AND_SI = (D&RN&!SI | !D&RN&SI) ? 1'b1:1'b0;
assign ENABLE_RN_AND_SE = (RN&SE) ? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //

specify
$width(posedge CK &&& (ENABLE_RN == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_RN == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$recrem(posedge RN, posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);
$width(negedge RN,1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_RN_AND_NOT_SI_OR_NOT_D_AND_RN_AND_SI == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_RN_AND_NOT_SI_OR_NOT_D_AND_RN_AND_SI == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_RN_AND_SE == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_RN_AND_SE == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
if (D==1'b0 && RN==1'b1 && SI==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && RN==1'b1 && SE==1'b0 && SI==1'b1 || D==1'b0 && RN==1'b1 && SE==1'b1 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && RN==1'b1 && SE==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (RN==1'b1 && SE==1'b0 && SI==1'b0)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
(negedge RN *> (Q +: 1'b0))=(0, 1.0);

endspecify

  `endif // functional //
endmodule //SDFFRQX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFRX0P5H7L (D, RN, SE, SI, CK, Q, QN);
  input D, RN, SE, SI, CK;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;

  buf   XX0 (xRN,RN);
  buf     IC (clk,CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;

  `ifdef functional
				// none
  `else // functional //
    not ET_I6(SE_bar,SE);
    and ET_I7(ENABLE_RN_AND_NOT_SE,RN, SE_bar);

    buf ET_I8(ENABLE_RN,RN);

    and ET_I9(ENABLE_RN_AND_SE,RN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), posedge RN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            negedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            posedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RN_AND_SE === 1'b1),
            negedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN_AND_SE === 1'b1),
            posedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFRX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFRX1H7L (D, RN, SE, SI, CK, Q, QN);
  input D, RN, SE, SI, CK;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;

  buf   XX0 (xRN,RN);
  buf     IC (clk,CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;

  `ifdef functional
				// none
  `else // functional //
    not ET_I6(SE_bar,SE);
    and ET_I7(ENABLE_RN_AND_NOT_SE,RN, SE_bar);

    buf ET_I8(ENABLE_RN,RN);

    and ET_I9(ENABLE_RN_AND_SE,RN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), posedge RN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            negedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            posedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RN_AND_SE === 1'b1),
            negedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN_AND_SE === 1'b1),
            posedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFRX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFRX2H7L (D, RN, SE, SI, CK, Q, QN);
  input D, RN, SE, SI, CK;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;

  buf   XX0 (xRN,RN);
  buf     IC (clk,CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;

  `ifdef functional
				// none
  `else // functional //
    not ET_I6(SE_bar,SE);
    and ET_I7(ENABLE_RN_AND_NOT_SE,RN, SE_bar);

    buf ET_I8(ENABLE_RN,RN);

    and ET_I9(ENABLE_RN_AND_SE,RN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), posedge RN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            negedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            posedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RN_AND_SE === 1'b1),
            negedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN_AND_SE === 1'b1),
            posedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFRX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFRX3H7L (D, RN, SE, SI, CK, Q, QN);
  input D, RN, SE, SI, CK;

  output Q, QN;
  reg NOTIFIER;
  supply1 xSN;

wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;

  buf   XX0 (xRN,RN);
  buf     IC (clk,CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;

  `ifdef functional
				// none
  `else // functional //
    not ET_I6(SE_bar,SE);
    and ET_I7(ENABLE_RN_AND_NOT_SE,RN, SE_bar);

    buf ET_I8(ENABLE_RN,RN);

    and ET_I9(ENABLE_RN_AND_SE,RN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> Q
	(negedge RN => (Q : 1'b0))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc RN --> QN
	(negedge RN => (QN : 1'b1))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_RN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), posedge RN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            negedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
            posedge SE &&& (ENABLE_RN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RN_AND_SE === 1'b1),
            negedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RN_AND_SE === 1'b1),
            posedge SI &&& (ENABLE_RN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFRX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFSQX1H7L (Q, CK, D, SE, SI, SN);
output Q;
input D, SI, SE, CK, SN;
reg NOTIFIER;
supply1 xRN;
supply1 dRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);

wire ENABLE_SN ;
wire ENABLE_NOT_SE_AND_SN ;
wire ENABLE_D_AND_NOT_SI_AND_SN_OR_NOT_D_AND_SI_AND_SN ;
wire ENABLE_SE_AND_SN ;
wire ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI ;
assign ENABLE_SN = (SN) ? 1'b1:1'b0;
assign ENABLE_NOT_SE_AND_SN = (!SE&SN) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SI_AND_SN_OR_NOT_D_AND_SI_AND_SN = (D&!SI&SN | !D&SI&SN) ? 1'b1:1'b0;
assign ENABLE_SE_AND_SN = (SE&SN) ? 1'b1:1'b0;
assign ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI = (!D&!SE | SE&!SI) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK &&& (ENABLE_SN == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_SN == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE_AND_SN == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE_AND_SN == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_AND_SN_OR_NOT_D_AND_SI_AND_SN == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_AND_SN_OR_NOT_D_AND_SI_AND_SN == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE_AND_SN == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE_AND_SN == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
$recrem(posedge SN, posedge CK &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI == 1'b1), 1.0, 1.0, NOTIFIER);
$width(negedge SN,1.0,0,NOTIFIER);
if (D==1'b0 && SI==1'b1 && SN==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (SE==1'b0 && SI==1'b0 && SN==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 && SN==1'b1 || D==1'b0 && SE==1'b1 && SI==1'b0 && SN==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b1 && SN==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);

endspecify
`endif // functional //
endmodule //SDFFSQX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFSQX2H7L (Q, CK, D, SE, SI, SN);
output Q;
input D, SI, SE, CK, SN;
reg NOTIFIER;
supply1 xRN;
supply1 dRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);

wire ENABLE_SN ;
wire ENABLE_NOT_SE_AND_SN ;
wire ENABLE_D_AND_NOT_SI_AND_SN_OR_NOT_D_AND_SI_AND_SN ;
wire ENABLE_SE_AND_SN ;
wire ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI ;
assign ENABLE_SN = (SN) ? 1'b1:1'b0;
assign ENABLE_NOT_SE_AND_SN = (!SE&SN) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SI_AND_SN_OR_NOT_D_AND_SI_AND_SN = (D&!SI&SN | !D&SI&SN) ? 1'b1:1'b0;
assign ENABLE_SE_AND_SN = (SE&SN) ? 1'b1:1'b0;
assign ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI = (!D&!SE | SE&!SI) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK &&& (ENABLE_SN == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_SN == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE_AND_SN == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE_AND_SN == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_AND_SN_OR_NOT_D_AND_SI_AND_SN == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_AND_SN_OR_NOT_D_AND_SI_AND_SN == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE_AND_SN == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE_AND_SN == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
$recrem(posedge SN, posedge CK &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI == 1'b1), 1.0, 1.0, NOTIFIER);
$width(negedge SN,1.0,0,NOTIFIER);
if (D==1'b0 && SI==1'b1 && SN==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (SE==1'b0 && SI==1'b0 && SN==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 && SN==1'b1 || D==1'b0 && SE==1'b1 && SI==1'b0 && SN==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b1 && SN==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);

endspecify
`endif // functional //
endmodule //SDFFSQX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFSQX3H7L (Q, CK, D, SE, SI, SN);
output Q;
input D, SI, SE, CK, SN;
reg NOTIFIER;
supply1 xRN;
supply1 dRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);

wire ENABLE_SN ;
wire ENABLE_NOT_SE_AND_SN ;
wire ENABLE_D_AND_NOT_SI_AND_SN_OR_NOT_D_AND_SI_AND_SN ;
wire ENABLE_SE_AND_SN ;
wire ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI ;
assign ENABLE_SN = (SN) ? 1'b1:1'b0;
assign ENABLE_NOT_SE_AND_SN = (!SE&SN) ? 1'b1:1'b0;
assign ENABLE_D_AND_NOT_SI_AND_SN_OR_NOT_D_AND_SI_AND_SN = (D&!SI&SN | !D&SI&SN) ? 1'b1:1'b0;
assign ENABLE_SE_AND_SN = (SE&SN) ? 1'b1:1'b0;
assign ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI = (!D&!SE | SE&!SI) ? 1'b1:1'b0;

`ifdef functional // functional //
`else // functional //
specify
$width(posedge CK &&& (ENABLE_SN == 1'b1), 1.0,0,NOTIFIER);
$width(negedge CK &&& (ENABLE_SN == 1'b1), 1.0,0,NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE_AND_SN == 1'b1), posedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_NOT_SE_AND_SN == 1'b1), negedge D, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_AND_SN_OR_NOT_D_AND_SI_AND_SN == 1'b1), posedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SI_AND_SN_OR_NOT_D_AND_SI_AND_SN == 1'b1), negedge SE, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE_AND_SN == 1'b1), posedge SI, 1.0, 1.0, NOTIFIER);
$setuphold(posedge CK &&& (ENABLE_SE_AND_SN == 1'b1), negedge SI, 1.0, 1.0, NOTIFIER);
$recrem(posedge SN, posedge CK &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI == 1'b1), 1.0, 1.0, NOTIFIER);
$width(negedge SN,1.0,0,NOTIFIER);
if (D==1'b0 && SI==1'b1 && SN==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (SE==1'b0 && SI==1'b0 && SN==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b0 && SI==1'b1 && SN==1'b1 || D==1'b0 && SE==1'b1 && SI==1'b0 && SN==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (D==1'b1 && SE==1'b1 && SN==1'b1)
(posedge CK => (Q:1'bx)) = (1.0,1.0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);
if (CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
(negedge SN *> (Q +: 1'b1))=(1.0, 0);

endspecify
`endif // functional //
endmodule //SDFFSQX3H7L
`endcelldefine




`timescale 1ns/1ps
`celldefine
module SDFFSX0P5H7L (D, SN, SE, SI, CK, Q, QN);
  input D, SN, SE, SI, CK;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI;

  buf   XX0 (xSN,SN);
  buf     IC (clk,CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  assign ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI=(!D&!SE|SE&!SI)? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not ET_I6(SE_bar,SE);

    and ET_I7(ENABLE_SN_AND_NOT_SE,SN, SE_bar);

    buf ET_I8(ENABLE_SN,SN);

    and ET_I9(ENABLE_SN_AND_SE,SN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN_AND_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_SN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN_AND_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_SN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI === 1'b1), posedge SN &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN === 1'b1),
            negedge SE &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN === 1'b1),
            posedge SE &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_SN_AND_SE === 1'b1),
            negedge SI &&& (ENABLE_SN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN_AND_SE === 1'b1),
            posedge SI &&& (ENABLE_SN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFSX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFSX1H7L (D, SN, SE, SI, CK, Q, QN);
  input D, SN, SE, SI, CK;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI;

  buf   XX0 (xSN,SN);
  buf     IC (clk,CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  assign ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI=(!D&!SE|SE&!SI)? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not ET_I6(SE_bar,SE);

    and ET_I7(ENABLE_SN_AND_NOT_SE,SN, SE_bar);

    buf ET_I8(ENABLE_SN,SN);

    and ET_I9(ENABLE_SN_AND_SE,SN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN_AND_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_SN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN_AND_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_SN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI === 1'b1), posedge SN &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN === 1'b1),
            negedge SE &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN === 1'b1),
            posedge SE &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_SN_AND_SE === 1'b1),
            negedge SI &&& (ENABLE_SN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN_AND_SE === 1'b1),
            posedge SI &&& (ENABLE_SN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFSX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFSX2H7L (D, SN, SE, SI, CK, Q, QN);
  input D, SN, SE, SI, CK;

  output Q, QN;
  reg NOTIFIER;
  supply1 xRN;

wire ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI;

  buf   XX0 (xSN,SN);
  buf     IC (clk,CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1,D,SI,SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);

  assign ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI=(!D&!SE|SE&!SI)? 1'b1:1'b0;

  `ifdef functional // functional //

  `else // functional //
    not ET_I6(SE_bar,SE);

    and ET_I7(ENABLE_SN_AND_NOT_SE,SN, SE_bar);

    buf ET_I8(ENABLE_SN,SN);

    and ET_I9(ENABLE_SN_AND_SE,SN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> Q
	(negedge SN => (Q : 1'b1))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b0 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b0)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1 && SE===1'b1 && SI===1'b1)
	// arc SN --> QN
	(negedge SN => (QN : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN_AND_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_SN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN_AND_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_SN_AND_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI === 1'b1), posedge SN &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI === 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN === 1'b1),
            negedge SE &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN === 1'b1),
            posedge SE &&& (ENABLE_SN === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_SN_AND_SE === 1'b1),
            negedge SI &&& (ENABLE_SN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SN_AND_SE === 1'b1),
            posedge SI &&& (ENABLE_SN_AND_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFSX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFTRQX0P5H7L ( Q, CK, D, RN, SE, SI);
input CK, D, RN, SE, SI;
output Q;

  reg NOTIFIER;
  supply1 xSN;

  buf   XX0 (xRN, RN);
  udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER);
  buf        I1 (Q, n0);


  `ifdef functional // functional //

  `else // functional //
    not ET_I7(ENABLE_NOT_SE, SE);


    buf ET_I9(ENABLE_SE, SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            negedge RN &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            posedge RN &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            negedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            posedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFTRQX0P5H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module SDFFTRQX1H7L ( Q, CK, D, RN, SE, SI);
input CK, D, RN, SE, SI;
output Q;

  reg NOTIFIER;
  supply1 xSN;

  buf   XX0 (xRN, RN);
  udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER);
  buf        I1 (Q, n0);


  `ifdef functional // functional //

  `else // functional //
    not ET_I7(ENABLE_NOT_SE, SE);


    buf ET_I9(ENABLE_SE, SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            negedge RN &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            posedge RN &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            negedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            posedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFTRQX1H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module SDFFTRQX2H7L ( Q, CK, D, RN, SE, SI);
input CK, D, RN, SE, SI;
output Q;

  reg NOTIFIER;
  supply1 xSN;

  buf   XX0 (xRN, RN);
  udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER);
  buf        I1 (Q, n0);


  `ifdef functional // functional //

  `else // functional //
    not ET_I7(ENABLE_NOT_SE, SE);


    buf ET_I9(ENABLE_SE, SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            negedge RN &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            posedge RN &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            negedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            posedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFTRQX2H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module SDFFTRQX3H7L ( Q, CK, D, RN, SE, SI);
input CK, D, RN, SE, SI;
output Q;

  reg NOTIFIER;
  supply1 xSN;

  buf   XX0 (xRN, RN);
  udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER);
  buf        I1 (Q, n0);


  `ifdef functional // functional //

  `else // functional //
    not ET_I7(ENABLE_NOT_SE, SE);


    buf ET_I9(ENABLE_SE, SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            negedge RN &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            posedge RN &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            negedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            posedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFTRQX3H7L
`endcelldefine



`timescale 1ns/1ps
`celldefine
module SDFFX0P5H7L ( Q, QN, CK, D, SE, SI);
input CK, D, SE, SI;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;


  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);


  `ifdef functional // functional //

  `else // functional //
    not ET_I6(ENABLE_NOT_SE, SE);

    buf ET_I7(ENABLE_SE, SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            negedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            posedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFX1H7L ( Q, QN, CK, D, SE, SI);
input CK, D, SE, SI;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;


  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);


  `ifdef functional // functional //

  `else // functional //
    not ET_I6(ENABLE_NOT_SE, SE);

    buf ET_I7(ENABLE_SE, SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            negedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            posedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFX2H7L ( Q, QN, CK, D, SE, SI);
input CK, D, SE, SI;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;


  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);


  `ifdef functional // functional //

  `else // functional //
    not ET_I6(ENABLE_NOT_SE, SE);

    buf ET_I7(ENABLE_SE, SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            negedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            posedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module SDFFX3H7L ( Q, QN, CK, D, SE, SI);
input CK, D, SE, SI;
output Q, QN;

  reg NOTIFIER;
  supply1 xRN, xSN;


  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);


  `ifdef functional // functional //

  `else // functional //
    not ET_I6(ENABLE_NOT_SE, SE);

    buf ET_I7(ENABLE_SE, SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            negedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_SE === 1'b1),
            posedge D &&& (ENABLE_NOT_SE === 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            negedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SE === 1'b1),
            posedge SI &&& (ENABLE_SE === 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule //SDFFX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TBUFX0P5H7L (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);



`ifdef functional // functional //
`else // functional //
specify
if (OE==1'b1)
(A => Y) = (1.0,1.0);
( OE => Y ) = (0, 0,1.0,1.0,1.0,1.0);

endspecify
`endif // functional //
endmodule //TBUFX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TBUFX0P7H7L (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);



`ifdef functional // functional //
`else // functional //
specify
if (OE==1'b1)
(A => Y) = (1.0,1.0);
( OE => Y ) = (0, 0,1.0,1.0,1.0,1.0);

endspecify
`endif // functional //
endmodule //TBUFX0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TBUFX12H7L (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);



`ifdef functional // functional //
`else // functional //
specify
if (OE==1'b1)
(A => Y) = (1.0,1.0);
( OE => Y ) = (0, 0,1.0,1.0,1.0,1.0);

endspecify
`endif // functional //
endmodule //TBUFX12H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TBUFX16H7L (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);



`ifdef functional // functional //
`else // functional //
specify
if (OE==1'b1)
(A => Y) = (1.0,1.0);
( OE => Y ) = (0, 0,1.0,1.0,1.0,1.0);

endspecify
`endif // functional //
endmodule //TBUFX16H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TBUFX1H7L (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);



`ifdef functional // functional //
`else // functional //
specify
if (OE==1'b1)
(A => Y) = (1.0,1.0);
( OE => Y ) = (0, 0,1.0,1.0,1.0,1.0);

endspecify
`endif // functional //
endmodule //TBUFX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TBUFX1P4H7L (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);



`ifdef functional // functional //
`else // functional //
specify
if (OE==1'b1)
(A => Y) = (1.0,1.0);
( OE => Y ) = (0, 0,1.0,1.0,1.0,1.0);

endspecify
`endif // functional //
endmodule //TBUFX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TBUFX2H7L (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);



`ifdef functional // functional //
`else // functional //
specify
if (OE==1'b1)
(A => Y) = (1.0,1.0);
( OE => Y ) = (0, 0,1.0,1.0,1.0,1.0);

endspecify
`endif // functional //
endmodule //TBUFX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TBUFX3H7L (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);



`ifdef functional // functional //
`else // functional //
specify
if (OE==1'b1)
(A => Y) = (1.0,1.0);
( OE => Y ) = (0, 0,1.0,1.0,1.0,1.0);

endspecify
`endif // functional //
endmodule //TBUFX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TBUFX4H7L (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);



`ifdef functional // functional //
`else // functional //
specify
if (OE==1'b1)
(A => Y) = (1.0,1.0);
( OE => Y ) = (0, 0,1.0,1.0,1.0,1.0);

endspecify
`endif // functional //
endmodule //TBUFX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TBUFX6H7L (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);



`ifdef functional // functional //
`else // functional //
specify
if (OE==1'b1)
(A => Y) = (1.0,1.0);
( OE => Y ) = (0, 0,1.0,1.0,1.0,1.0);

endspecify
`endif // functional //
endmodule //TBUFX6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TBUFX8H7L (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);



`ifdef functional // functional //
`else // functional //
specify
if (OE==1'b1)
(A => Y) = (1.0,1.0);
( OE => Y ) = (0, 0,1.0,1.0,1.0,1.0);

endspecify
`endif // functional //
endmodule //TBUFX8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TINVX0P5H7L (A, OE, Y);
output Y;
input  A, OE;
   not (I0_out, A);
   bufif1 (Y, I0_out, OE);

`ifdef functional // functional //
`else // functional //
   specify
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

     // path delays
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
     (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);

   endspecify
`endif // functional //

endmodule //TINVX0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TINVX0P7H7L (A, OE, Y);
output Y;
input  A, OE;
   not (I0_out, A);
   bufif1 (Y, I0_out, OE);

`ifdef functional // functional //
`else // functional //
   specify
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

     // path delays
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
     (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);

   endspecify
`endif // functional //

endmodule //TINVX0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TINVX12H7L (A, OE, Y);
output Y;
input  A, OE;
   not (I0_out, A);
   bufif1 (Y, I0_out, OE);

`ifdef functional // functional //
`else // functional //
   specify
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

     // path delays
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
     (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);

   endspecify
`endif // functional //

endmodule //TINVX12H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TINVX16H7L (A, OE, Y);
output Y;
input  A, OE;
   not (I0_out, A);
   bufif1 (Y, I0_out, OE);

`ifdef functional // functional //
`else // functional //
   specify
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

     // path delays
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
     (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);

   endspecify
`endif // functional //

endmodule //TINVX16H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TINVX1H7L (A, OE, Y);
output Y;
input  A, OE;
   not (I0_out, A);
   bufif1 (Y, I0_out, OE);

`ifdef functional // functional //
`else // functional //
   specify
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

     // path delays
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
     (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);

   endspecify
`endif // functional //

endmodule //TINVX1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TINVX1P4H7L (A, OE, Y);
output Y;
input  A, OE;
   not (I0_out, A);
   bufif1 (Y, I0_out, OE);

`ifdef functional // functional //
`else // functional //
   specify
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

     // path delays
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
     (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);

   endspecify
`endif // functional //

endmodule //TINVX1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TINVX2H7L (A, OE, Y);
output Y;
input  A, OE;
   not (I0_out, A);
   bufif1 (Y, I0_out, OE);

`ifdef functional // functional //
`else // functional //
   specify
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

     // path delays
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
     (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);

   endspecify
`endif // functional //

endmodule //TINVX2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TINVX3H7L (A, OE, Y);
output Y;
input  A, OE;
   not (I0_out, A);
   bufif1 (Y, I0_out, OE);

`ifdef functional // functional //
`else // functional //
   specify
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

     // path delays
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
     (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);

   endspecify
`endif // functional //

endmodule //TINVX3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TINVX4H7L (A, OE, Y);
output Y;
input  A, OE;
   not (I0_out, A);
   bufif1 (Y, I0_out, OE);

`ifdef functional // functional //
`else // functional //
   specify
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

     // path delays
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
     (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);

   endspecify
`endif // functional //

endmodule //TINVX4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TINVX6H7L (A, OE, Y);
output Y;
input  A, OE;
   not (I0_out, A);
   bufif1 (Y, I0_out, OE);

`ifdef functional // functional //
`else // functional //
   specify
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

     // path delays
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
     (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);

   endspecify
`endif // functional //

endmodule //TINVX6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module TINVX8H7L (A, OE, Y);
output Y;
input  A, OE;
   not (I0_out, A);
   bufif1 (Y, I0_out, OE);

`ifdef functional // functional //
`else // functional //
   specify
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

     // path delays
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
     (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);

   endspecify
`endif // functional //

endmodule //TINVX8H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR2X0P5H7L (Y, A, B);
output Y;
input A, B;

  xnor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR2X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR2X0P7H7L (Y, A, B);
output Y;
input A, B;

  xnor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR2X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR2X1H7L (Y, A, B);
output Y;
input A, B;

  xnor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR2X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR2X1P4H7L (Y, A, B);
output Y;
input A, B;

  xnor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR2X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR2X2H7L (Y, A, B);
output Y;
input A, B;

  xnor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR2X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR2X3H7L (Y, A, B);
output Y;
input A, B;

  xnor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR2X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR2X4H7L (Y, A, B);
output Y;
input A, B;

  xnor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR2X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR2X6H7L (Y, A, B);
output Y;
input A, B;

  xnor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR2X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR3X0P5H7L (Y, A, B, C);
output Y;
input A, B, C;

  xnor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR3X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR3X0P7H7L (Y, A, B, C);
output Y;
input A, B, C;

  xnor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR3X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR3X1H7L (Y, A, B, C);
output Y;
input A, B, C;

  xnor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR3X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR3X1P4H7L (Y, A, B, C);
output Y;
input A, B, C;

  xnor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR3X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR3X2H7L (Y, A, B, C);
output Y;
input A, B, C;

  xnor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR3X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR3X3H7L (Y, A, B, C);
output Y;
input A, B, C;

  xnor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR3X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR3X4H7L (Y, A, B, C);
output Y;
input A, B, C;

  xnor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR3X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XNOR3X6H7L (Y, A, B, C);
output Y;
input A, B, C;

  xnor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XNOR3X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR2X0P5H7L (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR2X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR2X0P7H7L (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR2X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR2X1H7L (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR2X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR2X1P4H7L (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR2X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR2X2H7L (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR2X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR2X3H7L (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR2X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR2X4H7L (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR2X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR2X6H7L (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b0)
(A => Y) = (1.0,1.0);
if (A==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0)
(B => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR2X6H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR3X0P5H7L (Y, A, B, C);
output Y;
input A, B, C;

  xor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR3X0P5H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR3X0P7H7L (Y, A, B, C);
output Y;
input A, B, C;

  xor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR3X0P7H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR3X1H7L (Y, A, B, C);
output Y;
input A, B, C;

  xor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR3X1H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR3X1P4H7L (Y, A, B, C);
output Y;
input A, B, C;

  xor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR3X1P4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR3X2H7L (Y, A, B, C);
output Y;
input A, B, C;

  xor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR3X2H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR3X3H7L (Y, A, B, C);
output Y;
input A, B, C;

  xor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR3X3H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR3X4H7L (Y, A, B, C);
output Y;
input A, B, C;

  xor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR3X4H7L
`endcelldefine


`timescale 1ns/1ps
`celldefine
module XOR3X6H7L (Y, A, B, C);
output Y;
input A, B, C;

  xor I0(Y, A, B, C);



`ifdef functional // functional //
`else // functional //
specify
if (B==1'b0 && C==1'b1)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b0 && C==1'b0)
(A => Y) = (1.0,1.0);
if (B==1'b1 && C==1'b1)
(A => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b0 && C==1'b0)
(B => Y) = (1.0,1.0);
if (A==1'b1 && C==1'b1)
(B => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b1)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b0 && B==1'b0)
(C => Y) = (1.0,1.0);
if (A==1'b1 && B==1'b1)
(C => Y) = (1.0,1.0);

endspecify
`endif // functional //
endmodule //XOR3X6H7L
`endcelldefine




// $Id: udp_mux4.v
//
// verilog UDP for 4-input muxes
//
//
//

primitive udp_mux4 (out, in0, in1, in2, in3, sel_0, sel_1);
   output out;
   input  in0, in1, in2, in3, sel_0, sel_1;

   table

// in0 in1 in2 in3 sel_0 sel_1 :  out
//
   0  ?  ?  ?  0  0  :  0;
   1  ?  ?  ?  0  0  :  1;
   ?  0  ?  ?  1  0  :  0;
   ?  1  ?  ?  1  0  :  1;
   ?  ?  0  ?  0  1  :  0;
   ?  ?  1  ?  0  1  :  1;
   ?  ?  ?  0  1  1  :  0;
   ?  ?  ?  1  1  1  :  1;
   0  0  ?  ?  x  0  :  0;
   1  1  ?  ?  x  0  :  1;
   ?  ?  0  0  x  1  :  0;
   ?  ?  1  1  x  1  :  1;
   0  ?  0  ?  0  x  :  0;
   1  ?  1  ?  0  x  :  1;
   ?  0  ?  0  1  x  :  0;
   ?  1  ?  1  1  x  :  1;
   1  1  1  1  x  x  :  1;
   0  0  0  0  x  x  :  0;

   endtable
endprimitive // udp_mux4

// $Id: udp_edfft.v
// verilog UDP for d flip-flops with enable
//
//
//

primitive udp_edfft (out, in, clk, clr_, set_, en, NOTIFIER);
   output out;
   input  in, clk, clr_, set_, en, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  en  NOT  : Qt : Qt+1
//
   ?   r    0      1     ?   ?    : ?  :  0  ; // clock in 0
   0   r    ?      1     1   ?    : ?  :  0  ; // clock in 0
   ?   r    ?      0     ?   ?    : ?  :  1  ; // clock in 1
   1   r    1      ?     1   ?    : ?  :  1  ; // clock in 1
   ?   *    1      1     0   ?    : ?  :  -  ; // no changes, not enabled
   ?   *    ?      1     0   ?    : 0  :  0  ; // no changes, not enabled
   ?   *    1      ?     0   ?    : 1  :  1  ; // no changes, not enabled
   ?  (x0)  ?      ?     ?   ?    : ?  :  -  ; // no changes
   ?  (x1)  ?      0     ?   ?    : 1  :  1  ; // no changes
   1   *    1      ?     ?   ?    : 1  :  1  ; // reduce pessimism
   0   *    ?      1     ?   ?    : 0  :  0  ; // reduce pessimism
   ?   f    ?      ?     ?   ?    : ?  :  -  ; // no changes on negedge clk
   *   b    ?      ?     ?   ?    : ?  :  -  ; // no changes when in switches
   1   x    1      ?     ?   ?    : 1  :  1  ; // no changes when in switches
   ?   x    1      ?     0   ?    : 1  :  1  ; // no changes when in switches
   0   x    ?      1     ?   ?    : 0  :  0  ; // no changes when in switches
   ?   x    ?      1     0   ?    : 0  :  0  ; // no changes when in switches
   ?   b    ?      ?     *   ?    : ?  :  -  ; // no changes when en switches
   ?   b    *      ?     ?   ?    : ?  :  -  ; // no changes when clr_ switches
   ?   x    0      1     ?   ?    : 0  :  0  ; // no changes when clr_ switches
   ?   b    ?      *     ?   ?    : ?  :  -  ; // no changes when set_ switches
   ?   x    ?      0     ?   ?    : 1  :  1  ; // no changes when set_ switches
   ?   ?    ?      ?     ?   *    : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_edfft

primitive ipicg_latchsr (Q, D, G, SB, RB, NOTIFIER);
   output Q;
   input  D, G, SB, RB, NOTIFIER;
   reg    Q;

   table

// D  G  SB   RB  NOT  : Qt : Qt+1
//
   1  1   1   1   ?   : ?  :  1 ; //
   0  1   1   1   ?   : ?  :  0 ; //
   1  *   1   1   ?   : 1  :  1 ; // reduce pessimism
   0  *   1   1   ?   : 0  :  0 ; // reduce pessimism
   *  0   1   1   ?   : ?  :  - ; // no changes when in switches
   ?  ?   0   ?   ?   : ?  :  1 ; // set output
   ?  0   (?1)   ?   ?   : 1  :  1 ; // cover all transistions on SB
   1  ?   (?1)   ?   ?   : 1  :  1 ; // cover all transistions on SB
   ?  ?   1   0   ?   : ?  :  0 ; // reset output
   ?  0   1   (?1)   ?   : 0  :  0 ; // cover all transistions on RB
   0  ?   1   (?1)   ?   : 0  :  0 ; // cover all transistions on RB
   ?  ?   ?   ?   *   : ?  :  x ; // any notifier changed

   endtable
endprimitive // ipicg_latchsr

`ifdef __VERILATOR__
module udp_dff (out, in, clk, clr_, set_, NOTIFIER);
   output out;
   input  in, clk, clr_, set_, NOTIFIER;
   reg    out;

  always @(posedge clk or negedge clr_ or negedge set_) begin
    if (set_ == 1'b0)
      out <= 1'b1;
    else if (clr_ == 1'b0)
      out <= 1'b0;
    else
      out <= in;
  end
endmodule
`else
primitive udp_dff (out, in, clk, clr_, set_, NOTIFIER);
   output out;
   input  in, clk, clr_, set_, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  NOT  : Qt : Qt+1
//
   0  r   ?   1   ?   : ?  :  0 ; // clock in 0
   1  r   1   ?   ?   : ?  :  1 ; // clock in 1
   1  *   1   ?   ?   : 1  :  1 ; // reduce pessimism
   0  *   ?   1   ?   : 0  :  0 ; // reduce pessimism
   ?  f   ?   ?   ?   : ?  :  - ; // no changes on negedge clk
   *  b   ?   ?   ?   : ?  :  - ; // no changes when in switches
   ?  ?   ?   0   ?   : ?  :  1 ; // set output
   ?  b   1   *   ?   : 1  :  1 ; // cover all transistions on set_
   1  x   1   *   ?   : 1  :  1 ; // cover all transistions on set_
   ?  ?   0   1   ?   : ?  :  0 ; // reset output
   ?  b   *   1   ?   : 0  :  0 ; // cover all transistions on clr_
   0  x   *   1   ?   : 0  :  0 ; // cover all transistions on clr_
   ?  ?   ?   ?   *   : ?  :  x ; // any notifier changed

   endtable
endprimitive // udp_dff
`endif

// $Id: udp_mux2.v
//
// verilog UDP for 2-input muxes
//
//
//

primitive udp_mux2 (out, in0, in1, sel);
   output out;
   input  in0, in1, sel;

   table

// in0 in1  sel :  out
//
   1  ?   0  :  1 ;
   0  ?   0  :  0 ;
   ?  1   1  :  1 ;
   ?  0   1  :  0 ;
   0  0   x  :  0 ;
   1  1   x  :  1 ;

   endtable
endprimitive // udp_mux2

primitive udp_edff (out, in, clk, clr_, set_, en, NOTIFIER);
   output out;
   input  in, clk, clr_, set_, en, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  en  NOT  : Qt : Qt+1
//
   0   r    ?      1     1   ?    : ?  :  0 ; // clock in 0
   1   r    1      ?     1   ?    : ?  :  1 ; // clock in 1
   ?   *    ?      ?     0   ?    : ?  :  - ; // no changes, not enabled
   *   ?    ?      ?     0   ?    : ?  :  - ; // no changes, not enabled
   1   *    1      ?     ?   ?    : 1  :  1 ; // reduce pessimism
   0   *    ?      1     ?   ?    : 0  :  0 ; // reduce pessimism
   ?   f    ?      ?     ?   ?    : ?  :  - ; // no changes on negedge clk
   *   b    ?      ?     ?   ?    : ?  :  - ; // no changes when in switches
   1   x    1      ?     ?   ?    : 1  :  1 ; // no changes when in switches
   0   x    ?      1     ?   ?    : 0  :  0 ; // no changes when in switches
   ?   b    ?      ?     *   ?    : ?  :  - ; // no changes when en switches
   ?   x    1      1     0   ?    : ?  :  - ; // no changes when en is disabled
   ?   ?    ?      0     ?   ?    : ?  :  1 ; // set output
   ?   b    1      *     ?   ?    : 1  :  1 ; // cover all transistions on set_
   ?   ?    1      *     0   ?    : 1  :  1 ; // cover all transistions on set_
   ?   ?    0      1     ?   ?    : ?  :  0 ; // reset output
   ?   b    *      1     ?   ?    : 0  :  0 ; // cover all transistions on clr_
   ?   ?    *      1     0   ?    : 0  :  0 ; // cover all transistions on clr_
   ?   ?    ?      ?     ?   *    : ?  :  x ; // any notifier changed

   endtable
endprimitive // udp_edff

// $Id: udp_mux.v
//
// verilog UDP for a 2-input mux used in scan cells
//
//
//

primitive udp_mux (out, in, s_in, s_sel);
   output out;
   input  in, s_in, s_sel;

   table

// in  s_in  s_sel :  out
//
   1  ?   0  :  1 ;
   0  ?   0  :  0 ;
   ?  1   1  :  1 ;
   ?  0   1  :  0 ;
   0  0   x  :  0 ;
   1  1   x  :  1 ;

   endtable
endprimitive // udp_mux

primitive ipicg_latchnsr (Q, D, GB, SB, RB, NOTIFIER);
   output Q;
   input  D, GB, SB, RB, NOTIFIER;
   reg    Q;

   table

// D  GB  SB   RB  NOT  : Qt : Qt+1
//
   1  0   1   1   ?   : ?  :  1 ; //
   0  0   1   1   ?   : ?  :  0 ; //
   1  *   1   1   ?   : 1  :  1 ; // reduce pessimism
   0  *   1   1   ?   : 0  :  0 ; // reduce pessimism
   *  1   1   1   ?   : ?  :  - ; // no changes when in switches
   ?  ?   0   ?   ?   : ?  :  1 ; // set output
   ?  1   (?1)   ?   ?   : 1  :  1 ; // cover all transistions on SB
   1  ?   (?1)   ?   ?   : 1  :  1 ; // cover all transistions on SB
   ?  ?   1   0   ?   : ?  :  0 ; // reset output
   ?  1   1   (?1)   ?   : 0  :  0 ; // cover all transistions on RB
   0  ?   1   (?1)   ?   : 0  :  0 ; // cover all transistions on RB
   ?  ?   ?   ?   *   : ?  :  x ; // any notifier changed

   endtable
endprimitive // ipicg_latchnsr

// $Id: udp_sedff.v
//
// verilog UDP for a 2-input mux used in scan cells
//
//
//
 primitive udp_sedff (out, in, clk, clr_, si, se, en, NOTIFIER);
   output out;
   input  in, clk, clr_, si, se,  en, NOTIFIER;
   reg    out;

   table
   // in  clk  clr_  si  se  en  NOT : Qt : Qt+1
      ?    ?    ?     ?   ?   ?   *  : ?  :  x; // any NOTIFIER changed
      ?    ?    0     ?   ?   ?   ?  : ?  :  0;
      ?    r    ?     0   1   ?   ?  : ?  :  0;
      ?    r    1     1   1   ?   ?  : ?  :  1;
      ?    b    1     ?   *   ?   ?  : ?  :  -; // no changes when se switches
      ?    b    1     *   ?   ?   ?  : ?  :  -; // no changes when si switches
      *    b    1     ?   ?   ?   ?  : ?  :  -; // no changes when in switches
      *    ?    ?     ?   0   0   ?  : 0  :  0; // no changes when in switches
      ?    ?    ?     *   0   0   ?  : 0  :  0; // no changes when in switches
      ?    b    1     ?   ?   *   ?  : ?  :  -; // no changes when en switches
      ?    b    *     ?   ?   ?   ?  : 0  :  0; // no changes when en switches
      ?    ?    *     ?   0   0   ?  : 0  :  0; // no changes when en switches
      ?    b    ?     ?   ?   *   ?  : 0  :  0; // no changes when en switches
      ?    b    ?     ?   *   ?   ?  : 0  :  0; // no changes when en switches
      ?    b    ?     *   ?   ?   ?  : 0  :  0; // no changes when en switches
      *    b    ?     ?   ?   ?   ?  : 0  :  0; // no changes when en switches
      ?  (10)   ?     ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      ?    *    1     1   1   ?   ?  : 1  :  1;
      ?    x    1     1   1   ?   ?  : 1  :  1;
      ?    *    1     1   ?   0   ?  : 1  :  1;
      ?    x    1     1   ?   0   ?  : 1  :  1;
      ?    *    ?     0   1   ?   ?  : 0  :  0;
      ?    x    ?     0   1   ?   ?  : 0  :  0;
      ?    *    ?     0   ?   0   ?  : 0  :  0;
      ?    x    ?     0   ?   0   ?  : 0  :  0;
      0    r    ?     0   ?   1   ?  : ?  :  0 ;
      0    *    ?     0   ?   ?   ?  : 0  :  0 ;
      0    x    ?     0   ?   ?   ?  : 0  :  0 ;
      1    r    1     1   ?   1   ?  : ?  :  1 ;
      1    *    1     1   ?   ?   ?  : 1  :  1 ;
      1    x    1     1   ?   ?   ?  : 1  :  1 ;
      ?  (x0)   ?     ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      1    r    1     ?   0   1   ?  : ?  :  1;
      0    r    ?     ?   0   1   ?  : ?  :  0;
      ?    *    ?     ?   0   0   ?  : ?  :  -;
      ?    x    1     ?   0   0   ?  : ?  :  -;
      1    x    1     ?   0   ?   ?  : 1  :  1; // no changes when in switches
      0    x    ?     ?   0   ?   ?  : 0  :  0; // no changes when in switches
      1    x    ?     ?   0   0   ?  : 0  :  0; // no changes when in switches
      1    *    1     ?   0   ?   ?  : 1  :  1; // reduce pessimism
      0    *    ?     ?   0   ?   ?  : 0  :  0; // reduce pessimism

   endtable
endprimitive  /* udp_sedff */

// $Id: udp_sedfft.v
//
// verilog UDP for a 2-input mux used in scan cells
//
//
//
 primitive udp_sedfft (out, in, clk, clr_, si, se, en, NOTIFIER);
   output out;
   input  in, clk, clr_, si, se,  en, NOTIFIER;
   reg    out;

   table
   // in  clk  clr_  si  se  en  NOT : Qt : Qt+1
      ?    ?    ?     ?   ?   ?   *  : ?  :  x; // any NOTIFIER changed
      ?    r    ?     0   1   ?   ?  : ?  :  0;
      ?    r    ?     1   1   ?   ?  : ?  :  1;
      ?    b    ?     ?   *   ?   ?  : ?  :  -; // no changes when se switches
      ?    b    ?     *   ?   ?   ?  : ?  :  -; // no changes when si switches
      *    b    ?     ?   ?   ?   ?  : ?  :  -; // no changes when in switches
      ?    b    ?     ?   ?   *   ?  : ?  :  -; // no changes when en switches
      ?    b    *     ?   ?   ?   ?  : ?  :  -; // no changes when clr switches
      0    r    ?     0   ?   1   ?  : ?  :  0 ;
      1    r    1     1   ?   1   ?  : ?  :  1 ;
      ?    r    ?     0   ?   0   ?  : 0  :  0;
      ?    x    ?     0   ?   0   ?  : 0  :  0;
      ?    r    1     1   ?   0   ?  : 1  :  1;
      ?    x    1     1   ?   0   ?  : 1  :  1;
      ?    *    1     ?   0   0   ?  : ?  :  -;
      ?    *    ?     1   1   ?   ?  : 1  :  1;
      1    *    1     1   ?   ?   ?  : 1  :  1;
      ?    *    ?     0   1   ?   ?  : 0  :  0;
      ?    *    0     0   ?   ?   ?  : 0  :  0;
      0    *    ?     0   ?   ?   ?  : 0  :  0;
      ?    x    1     ?   0   0   ?  : ?  :  -;
      ?    *    ?     ?   0   0   ?  : 0  :  0;
      ?    x    ?     ?   0   0   ?  : 0  :  0;
      ?    x    ?     1   1   ?   ?  : 1  :  1;
      1    x    1     1   ?   ?   ?  : 1  :  1;
      ?    x    ?     0   1   ?   ?  : 0  :  0;
      ?    x    0     0   ?   ?   ?  : 0  :  0;
      0    x    ?     0   ?   ?   ?  : 0  :  0;
      ?    r    0     0   ?   ?   ?  : ?  :  0 ;
      ?   (?0)  ?     ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      1    r    1     ?   0   1   ?  : ?  :  1;
      0    r    ?     ?   0   1   ?  : ?  :  0;
      ?    r    0     ?   0   ?   ?  : ?  :  0;
      ?    x    0     ?   0   ?   ?  : 0  :  0;
      1    x    1     ?   0   ?   ?  : 1  :  1; // no changes when in switches
      0    x    ?     ?   0   ?   ?  : 0  :  0; // no changes when in switches
      1    *    1     ?   0   ?   ?  : 1  :  1; // reduce pessimism
      0    *    ?     ?   0   ?   ?  : 0  :  0; // reduce pessimism

   endtable
endprimitive  /* udp_sedfft */


// $Id: udp_tlat.v
//
// verilog UDP for d latches
//
//

primitive udp_tlat (out, in, hold, clr_, set_, NOTIFIER);
   output out;
   input  in, hold, clr_, set_, NOTIFIER;
   reg    out;

   table

// in  hold  clr_   set_  NOT  : Qt : Qt+1
//
   1  0   1   ?   ?   : ?  :  1  ; //
   0  0   ?   1   ?   : ?  :  0  ; //
   1  *   1   ?   ?   : 1  :  1  ; // reduce pessimism
   0  *   ?   1   ?   : 0  :  0  ; // reduce pessimism
   *  1   ?   ?   ?   : ?  :  -  ; // no changes when in switches
   ?  ?   ?   0   ?   : ?  :  1  ; // set output
   ?  1   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   1  ?   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   ?  ?   0   1   ?   : ?  :  0  ; // reset output
   ?  1   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   0  ?   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   ?  ?   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_tlat

primitive udp_dff_rn_pre_sn (out, in, clk, clr_, set_, NOTIFIER);
   output out;
   input  in, clk, clr_, set_, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  NOT  : Qt : Qt+1
//
   0  r   ?   1   ?   : ?  :  0  ; // clock in 0
   1  r   1   ?   ?   : ?  :  1  ; // clock in 1
   1  *   1   ?   ?   : 1  :  1  ; // reduce pessimism
   0  *   ?   1   ?   : 0  :  0  ; // reduce pessimism
   ?  f   ?   ?   ?   : ?  :  -  ; // no changes on negedge clk
   *  b   ?   ?   ?   : ?  :  -  ; // no changes when in switches
   ?  ?   1   0   ?   : ?  :  1  ; // set output
   ?  b   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   1  x   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   ?  ?   0   ?   ?   : ?  :  0  ; // reset output
   ?  b   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   0  x   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   ?  ?   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_dff_rn_pre_sn

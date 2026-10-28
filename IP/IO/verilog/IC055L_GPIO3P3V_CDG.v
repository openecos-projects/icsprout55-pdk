//////////////////////////////////////////////////////////////////////////////////////
// Emprean Library/IP Product
// Filename: IC055L_GPIO3P3V_CDG.v
// Technology: Icsprout_55nm
// Product Type: Standard I/O
// Product Name: IC055L_GPIO3P3V_CDG
/////////////////////////////////////////////////////////////////////////////////////


// ****** (C) Copyright 2026 company   Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVDD1.v
// Description          : VDD Power Pad for I/O Pre-driver & Core
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD1(VDD);

   inout VDD;
   pullup               G2(VDD);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine




// ****** (C) Copyright 2026 company   Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVDD2.v
// Description          : VDD Power Pad for I/O Post-driver
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD2();


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine



// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVSS1.v
// Description          : VSS Power Pad for I/O Pre-driver & Core
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS1(VSS);

   inout VSS;
   pulldown             G2(VSS);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine


// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVSS2.v
// Description          : VSS Power Pad for I/O Post-driver
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS2();


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine


// ****** (C) Copyright 2026 company   Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVDDPOC.v
// Description          : One digital Vdd power cell for I/O ESD protection (without pad opening window)
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDDPOC();

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine




// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVSS3.v
// Description          : vss power pad for all(I/O pre-driver, post-driver &core) 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS3(VSS);

   inout VSS;
   pulldown             G2(VSS);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
/////////////////////////////////



// ****** (C) Copyright 2026 company   Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVDDANA2I.v
// Description          : VDD analog PAD within digital power domain 
// 
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDDANA2I(AVDDDI);

   inout AVDDDI;
   pullup               G2(AVDDDI);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine


// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVSSANA2I.v
// Description          : VSS analog PAD within digital power domain 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSSANA2I(AVSSDI);

   inout AVSSDI;
   pulldown             G2(AVSSDI);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine


// ****** (C) Copyright 2026 company   Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVDDANA1I.v
// Description          : VDD analog PAD within digital power domain 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDDANA1I(AVDDI);

   inout AVDDI;
   pullup               G2(AVDDI);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine


// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVSSANA1I.v
// Description          : VSS analog PAD within digital power domain 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSSANA1I(AVSSI);

   inout AVSSI;
   pulldown             G2(AVSSI);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine

// ****** (C) Copyright 2026 company   Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PANA2I.v
// Description          : Analog signal cell of I/O voltage in digital domain 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PANA2I(PAD);
inout PAD;


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine

// ****** (C) Copyright 2026 company   Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PANA2.v
// Description          : Analog signal cell of I/O voltage in analog domain 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PANA2(PAD);
inout PAD;


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine

// ****** (C) Copyright 2026 company   Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PANA2C.v
// Description          : Analog signal cell of core voltage in analog domain 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PANA2C(PAD);
inout PAD;


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine

// ****** (C) Copyright 2026 company   Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVDDANA1.v
// Description          : Power analog PAD in analog domain (for I/O power/ground supplies which are connected to internal circuitry)
//


`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDDANA1(AVDDI);

   inout AVDDI;
   pullup               G2(AVDDI);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine


// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVSSANA1.v
// Description          : Ground analog PAD in  (for I/O power/ground supplies which are connected to internal circuitry)
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSSANA1(AVSSI);

   inout AVSSI;
   pulldown             G2(AVSSI);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine


// ****** (C) Copyright 2026 company   Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVDDANA1C.v
// Description          : Power analog PAD (for 1.1V power/ground supplies which are connected to internal circuitry)
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDDANA1C(AVDDIC);

   inout AVDDIC;
   pullup               G2(AVDDIC);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine


// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVSSANA1C.v
// Description          : Ground analog PAD (for 1.1V power/ground supplies which are connected to internal circuitry)
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSSANA1C(AVSSIC);

   inout AVSSIC;
   pulldown             G2(AVSSIC);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine


// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVDDANA2.v
// Description          : Power analog PAD (for I/O power/ground supplies which are connected to power ring and internal circuitry)
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDDANA2(AVDDD);

   inout AVDDD;
   pullup               G2(AVDDD);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine


// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVSSANA2.v
// Description          : Ground analog PAD (for I/O power/ground supplies which are connected to power ring and internal circuitry) 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSSANA2(AVSSD);

   inout AVSSD;
   pulldown             G2(AVSSD);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine


// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVDDANA2C.v

// Description          : Power analog PAD (for 1.1V power/ground supplies which are connected to power ring and internal circuitry)
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDDANA2C(AVDDDC);

   inout AVDDDC;
   pullup               G2(AVDDDC);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine


// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVSSANA2C.v
// Description          : Ground analog PAD (for 1.1V power/ground supplies which are connected to power ring and internal circuitry)
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSSANA2C(AVSSDC);

   inout AVSSDC;
   pulldown             G2(AVSSDC);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine


// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVSSANA3.v
// Description          : VSS analog PAD (for I/O power) with VSS Ring
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSSANA3(VSS);

   inout VSS;
   pulldown             G2(VSS);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine

// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PVSSANA3C.v
// Description          : VSS analog PAD (for 1.1V) with VSS Ring
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSSANA3C(VSS);

   inout VSS;
   pulldown             G2(VSS);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine


// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PCUT.v
// Description          : Power-Cut Cell for High Voltage Drop for difference voltage level between digital and analog,  and core ground vss is shorted
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PCUT();

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine


/////////////////////////// OSC cell/////////////////////////////
/// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : POSCXFR.v
// Description          : Crystal oscillator with internal resistor and active high enable 
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif


module POSCXFR(XIN,XOUT,XC,E);

output  XC;
input   XIN,E;
output   XOUT;

  nand           G2(XOUT,XIN,E);
  and            G5( XC ,XIN,E);

`ifdef functional
`else
specify
// Parameter declarations
 specparam e_lh_xc_lh_1=0,e_lh_xout_hxc=0,e_hl_xc_hl=0,
 e_hl_xout_xch=0,xin_lh_xout_hl=0,e_lh_xout_lxc=0,
 e_hl_xout_xcl=0,xin_hl_xc_hl=0,xin_hl_xout_lh=0,xin_lh_xc_lh=0;
// Delays
 (        E   => XOUT) = (e_lh_xout_lxc,e_lh_xout_hxc,e_lh_xout_lxc,e_hl_xout_xch,e_lh_xout_hxc,e_hl_xout_xcl);
 (        E  +=> XC   ) = (e_lh_xc_lh_1,e_hl_xc_hl);
 (        XIN -=> XOUT) = (xin_hl_xout_lh,xin_lh_xout_hl);
 (        XIN +=> XC   ) = (xin_lh_xc_lh,xin_hl_xc_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
`timescale 1ns / 10ps


/// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : POSCX.v
// Description          : Crystal oscillator with no resistor and active high enable 
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif


module POSCX(XIN,XOUT,XC,E);

output  XC;
input   XIN,E;
output   XOUT;

  nand           G2(XOUT,XIN,E);
  and            G5( XC ,XIN,E);

`ifdef functional
`else
specify
// Parameter declarations
 specparam e_lh_xc_lh_1=0,e_lh_xout_hxc=0,e_hl_xc_hl=0,
 e_hl_xout_xch=0,xin_lh_xout_hl=0,e_lh_xout_lxc=0,
 e_hl_xout_xcl=0,xin_hl_xc_hl=0,xin_hl_xout_lh=0,xin_lh_xc_lh=0;
// Delays
 (        E   => XOUT) = (e_lh_xout_lxc,e_lh_xout_hxc,e_lh_xout_lxc,e_hl_xout_xch,e_lh_xout_hxc,e_hl_xout_xcl);
 (        E  +=> XC   ) = (e_lh_xc_lh_1,e_hl_xc_hl);
 (        XIN -=> XOUT) = (xin_hl_xout_lh,xin_lh_xout_hl);
 (        XIN +=> XC   ) = (xin_lh_xc_lh,xin_hl_xc_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
`timescale 1ns / 10ps


////////////////////////////////////////////////////////////
////////////////////////  Digital cell ///////////////////////////

/// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PDISDU.v
// Description          : CMOS or schmitt Input I/O pad with pull-down, pull-up resistor

`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PDISDU(PAD,PU,PD,C,IE,ST);

output  C;
input   PU,PD,IE,ST;
input   PAD;
  supply1 my1;
  supply0 my0;
  pmos    (PAD,C_buf,my0);
  and     (C,PAD,IE);
  rnmos   #0.01 (C_buf,my1,PU);
  rnmos   #0.01 (C_buf,my0,PD);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify

  if (ST === 1'b0) (PAD => C)=(0, 0);
  if (ST === 1'b1) (PAD => C)=(0, 0);
  ifnone (PAD => C) = (0,0);

  if (ST === 1'b0) (IE => C)=(0, 0);
  if (ST === 1'b1) (IE => C)=(0, 0);
  ifnone (IE => C) = (0,0);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults

// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: PDBSDU.v
// Description  	: CMOS 3-state bi-direction I/O pad with controlled
// 			  driving strength of eight level, Schmitt trigger and
//                        pull-down, pull-up resistor
//                        
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 

module PDBSDU(PAD,OE,PU,PD,A,S0,S1,S2,C,IE,ST);

output  C;
input   OE,PU,PD,A,S0,S1,S2,IE,ST;
inout   PAD;

  supply1 my1;
  supply0 my0;
  bufif1  (C_buf, A, OE);
  pmos    (PAD,C_buf,my0);
  and     (C,PAD,IE);
  rnmos   #0.01 (C_buf,my1,PU);
  rnmos   #0.01 (C_buf,my0,PD);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify

 if (ST === 1'b0) (PAD => C)=(0, 0);
 if (ST === 1'b1) (PAD => C)=(0, 0);
 ifnone (PAD => C) = (0,0);

 if (ST === 1'b0) (IE => C)=(0, 0);
 if (ST === 1'b1) (IE => C)=(0, 0);
 ifnone (IE => C) = (0,0);

 if(S0 === 1'b0 && S1 === 1'b0 && S2 === 1'b0) (A => PAD) = (0,0);
 if(S0 === 1'b1 && S1 === 1'b0 && S2 === 1'b0) (A => PAD) = (0,0);
 if(S0 === 1'b0 && S1 === 1'b1 && S2 === 1'b0) (A => PAD) = (0,0);
 if(S0 === 1'b1 && S1 === 1'b1 && S2 === 1'b0) (A => PAD) = (0,0);
 if(S0 === 1'b0 && S1 === 1'b0 && S2 === 1'b1) (A => PAD) = (0,0);
 if(S0 === 1'b1 && S1 === 1'b0 && S2 === 1'b1) (A => PAD) = (0,0);
 if(S0 === 1'b0 && S1 === 1'b1 && S2 === 1'b1) (A => PAD) = (0,0);
 if(S0 === 1'b1 && S1 === 1'b1 && S2 === 1'b1) (A => PAD) = (0,0);
 ifnone (A => PAD) = (0,0);

 if(S0 === 1'b0 && S1 === 1'b0 && S2 === 1'b0) (OE => PAD) = (0,0,0,0,0,0);
 if(S0 === 1'b1 && S1 === 1'b0 && S2 === 1'b0) (OE => PAD) = (0,0,0,0,0,0);
 if(S0 === 1'b0 && S1 === 1'b1 && S2 === 1'b0) (OE => PAD) = (0,0,0,0,0,0);
 if(S0 === 1'b1 && S1 === 1'b1 && S2 === 1'b0) (OE => PAD) = (0,0,0,0,0,0);
 if(S0 === 1'b0 && S1 === 1'b0 && S2 === 1'b1) (OE => PAD) = (0,0,0,0,0,0);
 if(S0 === 1'b1 && S1 === 1'b0 && S2 === 1'b1) (OE => PAD) = (0,0,0,0,0,0);
 if(S0 === 1'b0 && S1 === 1'b1 && S2 === 1'b1) (OE => PAD) = (0,0,0,0,0,0);
 if(S0 === 1'b1 && S1 === 1'b1 && S2 === 1'b1) (OE => PAD) = (0,0,0,0,0,0);
 ifnone (OE => PAD) = (0,0,0,0,0,0);

endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults

///////////////////////////////////////////////////////////

// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PCLAMPC.v

// Description          : Power clamp (for 1.1V)
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PCLAMPC(VDDESD, VSSESD);

   inout VDDESD, VSSESD;
   tran (VDDESD, VDDESD);
   tran (VSSESD, VSSESD);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine

///////////////////////////////////////////////////////////

// ****** (C) Copyright 2026 company Inc. ********
//  --    company   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : PCLAMP.v

// Description          : Power clamp (for 2.5V)
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PCLAMP(VDDDESD, VSSDESD);

   inout VDDDESD, VSSDESD;
   tran (VDDDESD, VDDDESD);
   tran (VSSDESD, VSSDESD);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine

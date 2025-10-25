// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Oct 26 01:57:50 2025
// Host        : NB-7286 running 64-bit major release  (build 9200)
// Command     : write_verilog {C:\Users\m.korobkov\Documents\fs\fpga-systems-challenge\src\fsc_002\fsc_002.v}
// Design      : fsc_002
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module fsc_002
   (id,
    iclk,
    .oq(dff[7]));
  input id;
  input iclk;
     output [7:0]dff;

  wire \<const0> ;
  wire \<const1> ;
  (* DONT_TOUCH *) wire [7:0]dff;
  wire iclk;
  wire id;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[0] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(id),
        .Q(dff[0]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[1] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(dff[0]),
        .Q(dff[1]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[2] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(dff[1]),
        .Q(dff[2]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[3] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(dff[2]),
        .Q(dff[3]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[4] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(dff[3]),
        .Q(dff[4]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[5] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(dff[4]),
        .Q(dff[5]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[6] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(dff[5]),
        .Q(dff[6]),
        .R(\<const0> ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[7] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(dff[6]),
        .Q(dff[7]),
        .R(\<const0> ));
endmodule

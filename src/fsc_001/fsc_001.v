// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Oct 25 23:06:35 2025
// Host        : NB-7286 running 64-bit major release  (build 9200)
// Command     : write_verilog {C:\Users\m.korobkov\Documents\fs\fsc\dcps\fsc_001.v}
// Design      : fsc_001
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module fsc_001
   (id,
    iclk,
    oq);
  input id;
  input iclk;
  output oq;

  wire \<const0> ;
  wire \<const1> ;
  wire iclk;
  wire id;
  wire oq;
  wire [7:1]p_0_in;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[0] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(id),
        .Q(p_0_in[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[1] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[2] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[3] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[4] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[5] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[6] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \dff_reg[7] 
       (.C(iclk),
        .CE(\<const1> ),
        .D(p_0_in[7]),
        .Q(oq),
        .R(\<const0> ));
endmodule

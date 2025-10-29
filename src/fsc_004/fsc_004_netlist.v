// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Oct 29 18:39:10 2025
// Host        : NB-7286 running 64-bit major release  (build 9200)
// Command     : write_verilog {C:\Users\m.korobkov\Documents\fs\fpga-systems-challenge\src\fsc_003\fsc_003_netlist.v}
// Design      : fsc_004
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module fsc_004
   (ia,
    iclk_1,
    iclk_2,
    oq);
  input ia;
  input iclk_1;
  input iclk_2;
  output oq;

  wire \<const0> ;
  wire \<const1> ;
  wire ia;
  wire iclk_1;
  wire iclk_2;
  wire oq;
  wire tmp_003;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* srl_name = "tmp_003_reg_srl4" *) 
  SRL16E #(
    .INIT(16'h0000)) 
    tmp_003_reg_srl4
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(iclk_1),
        .D(ia),
        .Q(tmp_003));
  (* srl_name = "tmp_4_reg_srl5" *) 
  SRL16E #(
    .INIT(16'h0000)) 
    tmp_4_reg_srl5
       (.A0(\<const0> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(iclk_2),
        .D(tmp_003),
        .Q(oq));
endmodule

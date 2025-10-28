
`timescale 1ns / 1ps
//------------------------------------------
//              | |                         |Project name: fsc_004
//==============+=+==============           |Developer: KeisN13
//              | |            ||           |
//    |***|    |***|           ||           |Description:
//====|***|    |***|           \\ |***|     |FPGA-Systems Challenge - Task-004
//====|***|    |***|             =|***|==== |
//====|***|====|***|    |**\                |More FPGA challenges here:
//====|***|    |***|====|***\     |***|     |https://fpga-systems.ru/fpga-systems-challenge
//    |***|    |***|    |****|====|***|==== |
//             |***|    |****|    FPGA      |
//fpga-systems |***| ru |****| developers   |support and more FPGA content https://boosty.to/fpgasystems
//             |***|    |****|  community   |
//    |***|    |***|    |****|====|***|==== |
//====|***|    |***|====|***/     |***|     |
//====|***|====|***|    |**/                |
//====|***|    |***|             =|***|==== |
//====|***|    |***|           // |***|     |
//    |***|    |***|           ||           |
//              | |            ||           |web      - https://fpga-systems.ru
//==============+=+==============           |telegram - https://t.me/fpgasystems
//              | |                         |Youtube  - https://www.youtube.com/c/fpgasystems
//------------------------------------------

module fsc_004(
    input  ia, 
    input iclk_1,
    input iclk_2,
    output oq
);

  (*srl_style = "srl"*) reg tmp_000, tmp_001, tmp_002, tmp_003, tmp_0, tmp_1, tmp_2, tmp_3, tmp_4;
   
   // Shit-style verilog for SRL, since i'm lazy
   
   always @(posedge iclk_1) begin
        tmp_000 <= ia;
        tmp_001 <= tmp_000;
        tmp_002 <= tmp_001;
        tmp_003 <= tmp_002; 
   end
   
   always @(posedge iclk_2) begin
        tmp_0 <= tmp_003;
        tmp_1 <= tmp_0;
        tmp_2 <= tmp_1;
        tmp_3 <= tmp_2;
        tmp_4 <= tmp_3;    
   end
   
   assign oq = tmp_4;
endmodule

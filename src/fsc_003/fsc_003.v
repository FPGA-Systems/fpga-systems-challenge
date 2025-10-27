`timescale 1ns / 1ps

module fsc_003 (
    input [3:0] ia,
    input [3:0] ib,
    input [3:0] ic,
    input [3:0] id,
    input [3:0] ie,
    input [3:0] ig,
    output [3:0] oq
);

luts inst_luts (
    .ia(ia),
    .ib(ib),
    .ic(ic),
    .id(id),
    .ie(ie),
    .ig(ig),
    .oq(oq)
);

endmodule


module luts (
    input [3:0] ia,
    input [3:0] ib,
    input [3:0] ic,
    input [3:0] id,
    input [3:0] ie,
    input [3:0] ig,
    output [3:0] oq
);
    
    assign oq = ia ^ ib ^ ic ^ id ^ ie ^ ig;
    
endmodule

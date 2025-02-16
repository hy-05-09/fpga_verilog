`timescale 1ns / 1ps
module sr_nand(
    input S, R, CLK,
    output Q,NOTQ
    );
assign Q=~(~(CLK&S)&NOTQ);
assign NOTQ=~(~(CLK&R)&Q);
endmodule

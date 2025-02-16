`timescale 1ns / 1ps
module d_ff(
    input D, CLK,
    output Q,NOTQ
    );
assign Q=(CLK&D)|(~CLK&~NOTQ);
assign NOTQ=(CLK&~D)|(~CLK&~Q);
endmodule

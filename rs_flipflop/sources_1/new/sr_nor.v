`timescale 1ns / 1ps
module sr_nor(
    input S, R, CLK,
    output Q,NOTQ
    );
assign Q=~(~(CLK|~NOTQ)|~(S|~NOTQ));
assign NOTQ=~(~(CLK|~Q)|~(R|~Q));
endmodule

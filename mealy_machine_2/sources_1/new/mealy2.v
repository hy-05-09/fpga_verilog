`timescale 1ns / 1ps
module mealy2(
    input CLK, RESET, X,
    output reg Z,
    output reg [4:0]Q
    );
 initial Q=5'D0;
 initial Z=0;
 
 always @(posedge CLK)
 begin
 Q=Q>>1;
 Q[4]=X;
 if (RESET==1'b0)
    Q=5'b00000;
 else if (Q==5'b10101)
    Z=1;
 else
    Z=0;
 end
 
endmodule

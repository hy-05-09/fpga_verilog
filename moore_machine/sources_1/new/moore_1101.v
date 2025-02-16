`timescale 1ns / 1ps
module moore_1101(
    input CLK, RESET, X,
    output reg Z,
    output reg [3:0]Q
    );
 initial Q=4'D0;
 initial Z=0;
 
 always @(posedge CLK)
 begin
 Q<=Q>>1;
 Q[3]<=X;
 if (RESET==1'b0)
    Q<=4'D0;
 else if (Q==4'b1101)
    Z<=1;
 else
    Z<=0;
 end
 
endmodule

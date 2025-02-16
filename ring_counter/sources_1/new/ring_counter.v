`timescale 1ns / 1ps
module ring_counter(
    input CLK, RESET,
    output reg [3:0]OUT
    );
    
 initial OUT=4'b1000;
 always @(posedge CLK)
 begin
 if (RESET==1'b0)
    OUT=4'b1000;
 else if (OUT==4'b0001)
    OUT=4'b1000;
 else
    OUT = OUT >> 1;
 end

 
endmodule

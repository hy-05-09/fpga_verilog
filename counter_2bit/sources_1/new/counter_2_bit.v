`timescale 1ns / 1ps
module counter_2_bit(
    input CLK, RESET,
    output reg [1:0]OUT
    );
    
 initial OUT=2'b00;
    
 always @(posedge CLK)
 begin
 if (RESET == 1'b0)
    OUT = 2'b00;
 else
    OUT <= OUT+1;
 end
    
endmodule

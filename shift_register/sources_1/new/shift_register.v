`timescale 1ns / 1ps
module shift_register(
    input CLK, RESET, IN,
    output reg [3:0]OUT
    );

 initial OUT=4'D0;
 always @(posedge CLK)
 begin
 if (RESET==1'b0)
    OUT=4'D0;
 else begin
    OUT = OUT >> 1;
    OUT[3] = IN;
 end
 end
 
endmodule

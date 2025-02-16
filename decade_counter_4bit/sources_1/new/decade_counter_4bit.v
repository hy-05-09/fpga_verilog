`timescale 1ns / 1ps
module decade_counter_4bit(
    input CLK, RESET,
    output reg [3:0]OUT
    );
    
 initial OUT=4'D0;
 always @(posedge CLK)
 begin
 if (RESET==1'b0)
    OUT=4'D0;
 else if (OUT==4'b1001)
    OUT=4'D0;
 else
    OUT <= OUT + 1;
 end
 
endmodule

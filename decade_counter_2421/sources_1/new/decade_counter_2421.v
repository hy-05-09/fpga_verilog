`timescale 1ns / 1ps
module decade_counter_2421(
    input CLK, RESET,
    output reg [3:0]OUT
    );
reg [3:0]TEMP;
    
 initial TEMP=4'D0;
 
 always @(posedge CLK)
 begin
 if (RESET==1'b0)
    TEMP <= 4'D0;
 else if (TEMP==4'b1001)
    TEMP <= 4'D0;
 else
    TEMP <= TEMP + 1;
OUT[0]<=TEMP[0];
OUT[1]<=TEMP[3]|(TEMP[1]&~TEMP[2])|(TEMP[2]&~TEMP[1]&TEMP[0]);
OUT[2]<=TEMP[3]|(TEMP[2]&TEMP[1])|(TEMP[2]&~TEMP[0]);
OUT[3]<=TEMP[3]|(TEMP[2]&TEMP[1])|(TEMP[2]&TEMP[0]);
end

endmodule
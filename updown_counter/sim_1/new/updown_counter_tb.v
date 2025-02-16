`timescale 1ns / 1ps
module updown_counter_tb;

reg CLK, RESET, IN;
wire [3:0]OUT;
wire [6:0]SEGMENT;
wire DIGIT;

updown_counter u_test(
.CLK(CLK), .RESET(RESET), .IN(IN), .OUT(OUT), .SEGMENT(SEGMENT), .DIGIT(DIGIT));

initial begin
CLK=1'b0;
RESET=1'b0;
IN = 1'b0;
end

always@(CLK or RESET) begin
CLK <= #10 ~CLK;
RESET <= #500 ~RESET;
IN <= #200 ~IN;
end
endmodule
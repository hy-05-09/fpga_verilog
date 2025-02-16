`timescale 1ns / 1ps
module counter_2_bit_tb;

reg CLK, RESET;
wire [1:0]OUT;

counter_2_bit u_test(
.CLK(CLK), .RESET(RESET), .OUT(OUT));

initial begin
CLK=1'b0;
RESET=1'b0;
end

always@(CLK or RESET) begin
CLK <= #50 ~CLK;
RESET <= #400 ~RESET;
end
endmodule

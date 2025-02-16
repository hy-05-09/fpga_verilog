`timescale 1ns / 1ps
module decade_counter_4bit_tb;

reg CLK, RESET;
wire [3:0]OUT;

decade_counter_4bit u_test(
.CLK(CLK), .RESET(RESET), .OUT(OUT));

initial begin
CLK=1'b0;
RESET=1'b0;
end

always@(CLK or RESET) begin
CLK <= #25 ~CLK;
RESET <= #500 ~RESET;
end
endmodule

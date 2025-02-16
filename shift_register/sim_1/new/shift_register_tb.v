`timescale 1ns / 1ps
module shift_register_tb;

reg CLK, RESET, IN;
wire [3:0]OUT;

shift_register u_test(
.CLK(CLK), .RESET(RESET), .IN(IN), .OUT(OUT));

initial begin
CLK=1'b0;
RESET=1'b0;
IN=1'b0;
end

always@(CLK or RESET) begin
CLK <= #50 ~CLK;
RESET <= #500 ~RESET;
IN <= #100 ~IN;
end
endmodule
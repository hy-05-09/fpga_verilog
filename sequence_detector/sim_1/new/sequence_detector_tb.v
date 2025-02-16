`timescale 1ns / 1ps
module sequence_detector_tb;

reg CLK, RESET, X;
wire Z;
wire [3:0]Q;

sequence_detector u_test(
.CLK(CLK), .RESET(RESET), .X(X), .Z(Z), .Q(Q));

initial begin
CLK=1'b0;
RESET=1'b1;
X=1'b1;
X=#125 ~X;
X=#50 ~X;
X=#125 ~X;
X=#50 ~X;
end

always@(CLK or RESET or X) begin
CLK <= #25 ~CLK;
RESET <= #500 ~RESET;
end
endmodule
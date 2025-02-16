`timescale 1ns / 1ps
module sr_nand_tb;

reg S,R,CLK;
wire Q,NOTQ;

sr_nand u_test(
.S(S), .R(R), .CLK(CLK), .Q(Q), .NOTQ(NOTQ));

initial begin
S=1'b0;
R=1'b0;
CLK=1'b0;
end

always@(S or R or CLK) begin
S <= #50 ~S;
R <= #100 ~R;
CLK <= #150 ~CLK;
end
endmodule
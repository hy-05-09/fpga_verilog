`timescale 1ns / 1ps
module d_ff_tb;

reg D,CLK;
wire Q,NOTQ;

d_ff u_test(
.D(D), .CLK(CLK), .Q(Q), .NOTQ(NOTQ));

initial begin
D=1'b0;
CLK=1'b0;
end

always@(D or CLK) begin
D <= #100 ~D;
CLK <= #150 ~CLK;
end
endmodule
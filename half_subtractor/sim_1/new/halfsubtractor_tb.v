`timescale 1ns / 1ps
module halfsubtractor_tb;

reg a,b;
wire d,bout;

halfsubtractor u_test(
.a(a), .b(b),
.d(d), .bout(bout));

initial begin
a=1'b0;
b=1'b0;
end

always@(a or b) begin
a <= #100 ~a;
b <= #200 ~b;
end
endmodule

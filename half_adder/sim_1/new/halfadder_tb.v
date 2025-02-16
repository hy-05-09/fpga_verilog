`timescale 1ns / 1ps
module halfadder_tb;

reg a,b;
wire s,c;

halfadder u_test(
.a(a), .b(b),
.s(s), .c(c));

initial begin
a=1'b0;
b=1'b0;
end

always@(a or b) begin
a <= #100 ~a;
b <= #200 ~b;
end
endmodule

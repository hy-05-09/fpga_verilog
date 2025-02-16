`timescale 1ns / 1ps
module bcd_tb;

reg a0,a1,a2,a3;
wire one, two, three, four, five, six, seven, eight, nine;
bcd u_test(
.a0(a0), .a1(a1), .a2(a2), .a3(a3),
.one(one), .two(two), .three(three), .four(four),
.five(five), .six(six), .seven(seven), .eight(eight), .nine(nine));

initial begin
a0=1'b0;
a1=1'b0;
a2=1'b0;
a3=1'b0;
end

always@(a0 or a1 or a2 or a3) begin
a0 <= #40 ~a0;
a1 <= #80 ~a1;
a2 <= #160 ~a2;
a3 <= #320 ~a3;
end
endmodule

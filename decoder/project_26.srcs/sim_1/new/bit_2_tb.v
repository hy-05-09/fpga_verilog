`timescale 1ns / 1ps
module bit_2_tb;

reg a1,a2,b1,b2;
wire f1,f2,f3;

bit_2 u_test(
.a1(a1), .a2(a2), .b1(b1), .b2(b2), .f1(f1), .f2(f2), .f3(f3));

initial begin
a1=1'b0;
a2=1'b0;
b1=1'b0;
b2=1'b0;
end

always@(a1 or a2 or b1 or b2) begin
a1 <= #40 ~a1;
a2 <= #80 ~a2;
b1 <= #160 ~b1;
b2 <= #320 ~b2;
end
endmodule
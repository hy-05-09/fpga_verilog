`timescale 1ns / 1ps
module MUX_tb;
reg a,b,c,d,s0,s1;
wire out;
MUX u_test(
.a(a), .b(b), .c(c), .d(d), .s0(s0), .s1(s1), .out(out));
initial begin
a=1'b0;
b=1'b0;
c=1'b0;
d=1'b0;
s0=1'b0;
s1=1'b0;
end
always@(a or b or c or d or s0 or s1) begin
a <= #15 ~a;
b <= #30 ~b;
c <= #60 ~c;
d <= #120 ~d;
s0 <= #240 ~s0;
s1 <= #480 ~s1;
end
endmodule

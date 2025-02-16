`timescale 1ns / 1ps
module encoder_tb;

reg a,b,c,d;
wire e0,e1,v;

encoder u_test(
.a(a), .b(b), .c(c), .d(d), .e0(e0), .e1(e1), .v(v));

initial begin
a=1'b0;
b=1'b0;
c=1'b0;
d=1'b0;
end

always@(a or b or c or d) begin
a <= #40 ~a;
b <= #80 ~b;
c <= #160 ~c;
d <= #320 ~d;
end
endmodule
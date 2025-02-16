`timescale 1ns / 1ps
module converter_tb;

reg a,b,c,d;
wire e,f,g,h;

converter u_test(
.a(a), .b(b),.c(c),.d(d),
.e(e), .f(f),.g(g),.h(h));

initial begin
a=1'b0;
b=1'b0;
c=1'b0;
d=1'b0;
end

always@(a or b) begin
a <= #40 ~a;
b <= #80 ~b;
c <= #120 ~c;
d <= #160 ~d;
end
endmodule
`timescale 1ns / 1ps
module parity_checker_tb;

reg a,b,c,d,p;
wire pec;
parity_checker u_test(
.a(a), .b(b), .c(c), .d(d), .p(p), .pec(pec));

initial begin
a=1'b0;
b=1'b0;
c=1'b0;
d=1'b0;
p=1'b0;
end

always@(a or b or c or d or p) begin
a <= #40 ~a;
b <= #80 ~b;
c <= #160 ~c;
d <= #320 ~d;
p <= #20 ~p;
end
endmodule

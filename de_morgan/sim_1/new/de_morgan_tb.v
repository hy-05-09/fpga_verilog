`timescale 1ns / 1ps

module de_morgan_tb;

reg a,b;
wire c,d;

de_morgan u_test(
.a(a),.b(b),
.c(c),.d(d));

initial begin
a=1'b0;
b=1'b0;
end

always@(a or b) begin
a <= #100 ~a;
b <= #200 ~b;
end


initial begin
#1000
$finish;
end

endmodule

`timescale 1ns / 1ps
module fullsubtractor_tb;

reg a,b,bin;
wire d,bout;

fullsubtractor u_test(
.a(a), .b(b), .bin(bin),
.d(d), .bout(bout));

initial begin
a=1'b0;
b=1'b0;
bin=1'b0;
end

always@(a or b) begin
a <= #50 ~a;
b <= #100 ~b;
bin <=#150 ~bin;
end
endmodule

`timescale 1ns / 1ps
module segment_tb;

reg x,y,z,w;
wire a,b,c,d,e,f,g,dp, digit;

segment u_test(
.x(x), .y(y), .z(z), .w(w),
.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp), .digit(digit));

initial begin
x=1'b0;
y=1'b0;
z=1'b0;
w=1'b0;
end

always@(x or y or z or w) begin
x <= #40 ~x;
y <= #80 ~y;
z <= #160 ~z;
w <= #320 ~w;
end
endmodule
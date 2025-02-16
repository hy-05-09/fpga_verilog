`timescale 1ns / 1ps
module fulladder_tb;

reg a,b,cin;
wire s,cout;

fulladder u_test(
.a(a), .b(b), .cin(cin),
.s(s), .cout(cout));

initial begin
a=1'b0;
b=1'b0;
cin=1'b0;
end

always@(a or b) begin
a <= #50 ~a;
b <= #100 ~b;
cin <= #150 ~cin;
end
endmodule

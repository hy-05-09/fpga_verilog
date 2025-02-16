`timescale 1ns / 1ps
module adder_4_bit_tb;

reg [3:0]A;
reg [3:0]B;
reg C0;
wire [3:0]S;
wire C4;

adder_4_bit u_test(
.C0(C0), .A(A), .B(B), .C4(C4), .S(S));

initial begin
A=4'D0;
B=4'D0;
C0=1'b0;
end

always@(A or B) begin
A <= #10 A+4'D1;
B<= #20 B+4'D1;
end
endmodule
`timescale 1ns / 1ps

module bcd_adder_tb;

reg [3:0]A;
reg [3:0]B;
reg C_IN;
wire [3:0]SUM;
wire C_OUT;

bcd_adder u_test (
.A(A), .B(B), .C_IN(C_IN), .SUM(SUM), .C_OUT(C_OUT) );

initial begin
A = 4'D0;
B = 4'D0;
C_IN = 1'b0;
end

always @(A or B) begin
A <= #10 A + 4'D1;
B <= #20 B + 4'D1;
end

endmodule
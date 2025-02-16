`timescale 1ns / 1ps
module subtractor_4_bit_tb;
reg [3:0]A;
reg [3:0]B;
reg b0;
wire [3:0]D;
wire b4;

subtractor_4_bit u_test(
.b0(b0), .A(A), .B(B), .b4(b4), .D(D));

initial begin
A=4'D0;
B=4'D0;
b0=1'b0;
end

always@(A or B) begin
A <= #10 A+4'D1;
B<= #20 B+4'D1;
end
endmodule

`timescale 1ns / 1ps
module adder_4_bit(
    input [3:0]A,[3:0]B,
    input C0,
    output [3:0]S,
    output C4
    );
    wire C1,C2,C3;
assign S[0]=A[0]^B[0]^C0;
assign C1=(A[0]&B[0])|((A[0]^B[0])&C0);
assign S[1]=A[1]^B[1]^C1;
assign C2=(A[1]&B[1])|((A[1]^B[1])&C1);
assign S[2]=A[2]^B[2]^C2;
assign C3=(A[2]&B[2])|((A[2]^B[2])&C2);
assign S[3]=A[3]^B[3]^C3;
assign C4=(A[3]&B[3])|((A[3]^B[3])&C3);
endmodule

`timescale 1ns / 1ps

module bcd_adder(
input [3:0]A, [3:0]B,
input C_IN,
output [3:0]SUM,
output C_OUT
    );
    wire [4:0]S, C;
    wire [2:0]CORRECT;
    
    assign S[0] = A[0]^B[0]^C_IN;
    assign C[1] = (A[0]&B[0])|((A[0]^B[0])&C_IN);
    assign S[1] = A[1]^B[1]^C[1];
    assign C[2] = (A[1]&B[1])|((A[1]^B[1])&C[1]);
    assign S[2] = A[2]^B[2]^C[2];
    assign C[3] = (A[2]&B[2])|((A[2]^B[2])&C[2]);
    assign S[3] = A[3]^B[3]^C[3];
    assign C[4] = (A[3]&B[3])|((A[3]^B[3])&C[3]);
    
    assign C_OUT = C[4]|(S[3]&S[2])|(S[3]&S[1]);
    assign SUM[0] = (~C_OUT&S[0])|(C_OUT&(S[0]^0));
    assign CORRECT[0]=S[0]&0;
    assign SUM[1] = (~C_OUT&S[1])|(C_OUT&(S[1]^1^CORRECT[0]));
    assign CORRECT[1]=S[1]|CORRECT[0];
    assign SUM[2] = (~C_OUT&S[2])|(C_OUT&(S[2]^1^CORRECT[1]));
    assign CORRECT[2]=S[2]|CORRECT[1];
    assign SUM[3] = (~C_OUT&S[3])|(C_OUT&(S[3]^0^CORRECT[2]));
    
    
endmodule

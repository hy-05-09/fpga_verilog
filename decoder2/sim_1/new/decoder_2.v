`timescale 1ns / 1ps
module decoder_4_16_tb;

reg A,B,C,D;
wire O1,O2,O3,O4,O5,O6,O7,O8,O9,O10,O11,O12,O13,O14,O15,O16;

decoder_4_16 u_test(
.A(A), .B(B), .C(C), .D(D), .O1(O1), .O2(O2), .O3(O3), .O4(O4), .O5(O5), .O6(O6),
.O7(O7), .O8(O8), .O9(O9), .O10(O10), .O11(O11), .O12(O12), .O13(O13), .O14(O14), .O15(O15), .O16(O16));

initial begin
A=1'b0;
B=1'b0;
C=1'b0;
D=1'b0;
end

always A = #50 ~A;
always B = #100 ~B;
always C = #200 ~C;
always D = #400 ~D;


endmodule

//`timescale 1ns / 1ps
//module demux_tb;

//reg InA,InB,Z;
//wire Out1,Out2,Out3,Out4;

//demux u_test(
//.InA(InA), .InB(InB), .Z(Z),.Out1(Out1), .Out2(Out2), .Out3(Out3), .Out4(Out4));

//initial begin
//InA=1'b0;
//InB=1'b0;
//Z=1'b0;
//end

//always@(InA or InB or Z) begin
//InA <= #25 ~InA;
//InB <= #50 ~InB;
//Z <= #100 ~Z;
//end
//endmodule
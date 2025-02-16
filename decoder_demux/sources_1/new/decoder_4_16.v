`timescale 1ns / 1ps
module decoder_4_16(
    input A,B,C,D,
    output O1,O2,O3,O4,O5,O6,O7,O8,O9,O10,O11,O12,O13,O14,O15,O16
    );

wire E1, E2, E3, E4;
demux d0(.Z(1'b1),.InA(C),.InB(D),.Out1(E1),.Out2(E2),.Out3(E3),.Out4(E4));
demux d1(.Z(E1),.InA(A),.InB(B),.Out1(O1),.Out2(O2),.Out3(O3),.Out4(O4));
demux d2(.Z(E2),.InA(A),.InB(B),.Out1(O5),.Out2(O6),.Out3(O7),.Out4(O8));
demux d3(.Z(E3),.InA(A),.InB(B),.Out1(O9),.Out2(O10),.Out3(O11),.Out4(O12));
demux d4(.Z(E4),.InA(A),.InB(B),.Out1(O13),.Out2(O14),.Out3(O15),.Out4(O16));

endmodule

`timescale 1ns / 1ps
module demux(
    input InA,InB,Z,
    output Out1,Out2,Out3,Out4
    );
assign Out1=Z&~InA&~InB;
assign Out2=Z&~InA&InB;
assign Out3=Z&InA&~InB;
assign Out4=Z&InA&InB;

endmodule

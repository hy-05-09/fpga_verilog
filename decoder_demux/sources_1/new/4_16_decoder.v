`timescale 1ns / 1ps
module 4_16_decoder(
    input InA,InB,A,
    output Out1,Out2,Out3,Out4
    );
assign Out1=A&~InA&~InB;
assign Out2=A&~InA&InB;
assign Out3=A&InA&~InB;
assign Out4=A&InA&InB;
endmodule

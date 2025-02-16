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

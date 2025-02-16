`timescale 1ns / 1ps
module parity_generator(
    input a,b,c,d,
    output p
    );
assign p=~(a^b^c^d);
endmodule

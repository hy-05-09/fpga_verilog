`timescale 1ns / 1ps
module encoder(
    input a,b,c,d,
    output e0,e1,v
    );
assign e0=a|b;
assign e1=a|(~b&c);
assign v=a|b|c|d;
endmodule
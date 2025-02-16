`timescale 1ns / 1ps
module converter(
    input a,b,c,d,
    output e,f,g,h
    );
assign e = ~((~a)&(~(b&d))&(~(b&c)));
assign f = ~((~a)&(~(b&c))&(~(b&(~d))));
assign g = ~((~a)&(~((~b)&c))&(~(b&(~c)&d)));
assign h=d;
endmodule
`timescale 1ns / 1ps

module fourxnor(
    input a,b,c,d,
    output e,f,g
    );
assign e = ~(a^b);
assign f = ~(c^e);
assign g = ~(d^f);










endmodule

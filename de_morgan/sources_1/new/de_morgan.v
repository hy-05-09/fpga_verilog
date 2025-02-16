`timescale 1ns / 1ps


module de_morgan(
    input a,b,
    output c,d
    );
 
  assign c=(~a)&b;
  assign d=~(a|(~b));
endmodule

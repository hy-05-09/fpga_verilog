`timescale 1ns / 1ps
module fullsubtractor(
    input a,b,bin,
    output d,bout
    );
assign d=a^b^bin;
assign bout=((~(a^b))&bin)|((~a)&b);
endmodule

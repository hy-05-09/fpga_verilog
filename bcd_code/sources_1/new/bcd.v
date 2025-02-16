`timescale 1ns / 1ps
module bcd(
    input a0,a1,a2,a3,
    output one, two, three, four, five, six, seven, eight, nine
    );
assign one = a0&(~a1)&(~a2)&(~a3);
assign two = (~a0)&a1&(~a2)&(~a3);
assign three = a0&a1&(~a2)&(~a3);
assign four = (~a0)&(~a1)&a2&(~a3);
assign five = a0&(~a1)&a2&(~a3);
assign six = (~a0)&a1&a2&(~a3);
assign seven = a0&a1&a2&(~a3);
assign eight = (~a0)&(~a1)&(~a2)&a3;
assign nine = a0&(~a1)&(~a2)&a3;
endmodule

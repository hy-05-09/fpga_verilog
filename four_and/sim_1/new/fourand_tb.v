`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/17 21:30:44
// Design Name: 
// Module Name: fourand_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fourand_tb;

reg aa,bb,cc;

wire dd,ee;

fourand u_test (
.a (aa),
.b (bb),
.c (cc),
.d (dd),

.e (ee),
);

initial begin
aa = 1'b0;
bb = 1'b0;
cc = 1'b0;
end

always@(aa or bb or cc) begin
aa <= #50 ~aa;
bb <= #100 ~bb;
cc <= #150 ~cc;
end

initial begin
#1000
$finish;
end



endmodule

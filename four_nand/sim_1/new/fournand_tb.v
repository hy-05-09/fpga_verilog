`timescale 1ns / 1ps

module fournand_tb;
reg aa,bb,cc,dd;
wire ee,ff,gg;
fournand u_test (
.a (aa),
.b (bb),
.c (cc),
.d (dd),
.e (ee),
.f (ff),
.g (gg)
);
initial begin
aa = 1'b0;
bb = 1'b0;
cc = 1'b0;
dd = 1'b0;
end
always@(aa or bb or cc) begin
aa <= #40 ~aa;
bb <= #80 ~bb;
cc <= #120 ~cc;
dd <= #160 ~dd;
end
initial begin
    #1000
    $finish;
end

endmodule

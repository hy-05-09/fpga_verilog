`timescale 1ns / 1ps
module demux_tb;

reg InA,InB,Z;
wire Out1,Out2,Out3,Out4;

demux u_test(
.InA(InA), .InB(InB), .Z(Z),.Out1(Out1), .Out2(Out2), .Out3(Out3), .Out4(Out4));

initial begin
InA=1'b0;
InB=1'b0;
Z=1'b0;
end

always@(InA or InB or Z) begin
InA <= #50 ~InA;
InB <= #100 ~InB;
Z <= #200 ~Z;
end
endmodule
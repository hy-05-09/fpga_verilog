`timescale 1ns / 1ps
module segment(
    input x,y,z,w,
    output a,b,c,d,e,f,g,dp, digit
    );
assign a=(~y)&(~w)|(~x)&z|(~x)&y&w|y&z|x&(~w)|x&(~y)&(~z);
assign b=(~x)&(~y)|(~y)&(~w)|(~x)&(~z)&(~w)|(~x)&z&w|x&(~z)&w;
assign c=(~y)&(~z)|(~y)&w|(~z)&w|(~x)&y|x&(~y);
assign d=(~x)&(~y)&(~w)|(~y)&z&w|y&(~z)&w|y&z&(~w)|x&(~z)&(~w);
assign e=(~y)&(~w)|z&(~w)|x&y|x&z;
assign f=(~z)&(~w)|(~x)&y&(~z)|x&(~y)|x&z|y&(~w);
assign g=(~y)&z|z&(~w)|(~x)&y&(~z)|x&w|x&(~y);
assign dp=1;
assign digit=1;

endmodule

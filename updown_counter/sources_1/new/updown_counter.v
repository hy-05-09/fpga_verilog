`timescale 1ns / 1ps
module updown_counter(
    input CLK, RESET, IN,
    output reg [3:0]OUT,
    output reg [6:0]SEGMENT,
    output reg DIGIT
    );
    
 initial OUT=4'D0;
 initial SEGMENT=7'b0000000;
 always @(posedge CLK)
 begin
  DIGIT=1;
 if (RESET==1'b0)
   OUT=4'D0;
 else if (IN==1'b1) begin
    OUT = OUT + 1;
    SEGMENT[0]=0; SEGMENT[1]=1; SEGMENT[2]=1; SEGMENT[3]=1; SEGMENT[4]=1;
    SEGMENT[5]=1; SEGMENT[6]=0;
 end
 else begin
    OUT = OUT - 1;
    SEGMENT[0]=0; SEGMENT[1]=1; SEGMENT[2]=1; SEGMENT[3]=1; SEGMENT[4]=1;
    SEGMENT[5]=0; SEGMENT[6]=1;
 end
 end

 
endmodule

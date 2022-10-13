`timescale 1ns/1ns
`include "W5P1.v"
 
module W5P1_tb;
reg [4:0]x;
reg [4:0]y;
wire xeqy,xgty,xlty;
 
W5P1 W5P1(x, y, xeqy, xgty, xlty);
initial 
begin
 
	$dumpfile("W5P1_tb.vcd");
	$dumpvars(0,W5P1_tb);
 
	x=5'b10110; y=5'b01100;
	#20;
	x=5'b10101; y=5'b00010;
	#20;
	x=5'b10010; y=5'b11000;
	#20;
	x=5'b00001; y=5'b00001;
	#20;
 
	$display("Test complete");
 
end
endmodule 

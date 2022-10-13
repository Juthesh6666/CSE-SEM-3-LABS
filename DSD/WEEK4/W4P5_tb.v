`timescale 1ns/1ns
`include "W4P5.v"

module W4P5_tb();
reg x0,x1,x2,x3,y0,y1,y2,y3,cin;
wire s0,s1,s2,s3;

W4P5 fbas(x0,x1,x2,x3,y0,y1,y2,y3,cin,s0,s1,s2,s3);
initial 
begin 
	$dumpfile("W4P5_tb.vcd");
	$dumpvars(0,W4P5_tb);
	
	cin=0;x0=1;x1=1;x2=1;x3=0;y0=0;y1=0;y2=1;y3=0;#20;
	cin=0;x0=1;x1=1;x2=1;x3=0;y0=1;y1=1;y2=1;y3=0;#20;
	
	
	$display("Test Complete");
	
end 
endmodule

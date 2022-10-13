`timescale 1ns/1ns
`include "W4P1A.v"

module W4P1A_tb();
reg a,b;
wire s,c;

W4P1A ha(a,b,s,c);
initial 
begin 
	$dumpfile("W4P1A_tb.vcd");
	$dumpvars(0,W4P1A_tb);
	
	a=0;b=0;#20;
	a=0;b=1;#20;
	a=1;b=0;#20;
	a=1;b=1;#20;
	
	$display("Test Complete");
	
end 
endmodule

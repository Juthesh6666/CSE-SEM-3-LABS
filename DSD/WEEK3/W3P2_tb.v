`timescale 1ns/1ns
`include "W3P2.v" 

module W3P2_tb();
reg a,b,c,d;
wire f;

W3P2 ex1(a,b,c,d,f);
initial 
begin

	$dumpfile("W3P2_tb.vcd");
	$dumpvars(0,W3P2_tb);
	
	a=1'b0; b=1'b0; c=1'b0; d=1'b0;
	#20;
	
	a=1'b0; b=1'b0; c=1'b0; d=1'b1;
	#20;
	
	a=1'b0; b=1'b0; c=1'b1; d=1'b0;
	#20;
	
	a=1'b0; b=1'b0; c=1'b1; d=1'b1;
	#20;
	
	a=1'b0; b=1'b1; c=1'b0; d=1'b0;
	#20;
	
	a=1'b0; b=1'b1; c=1'b0; d=1'b1;
	#20;
	
	a=1'b0; b=1'b1; c=1'b1; d=1'b0;
	#20;
	
	a=1'b0; b=1'b1; c=1'b1; d=1'b1;
	#20;
	
	a=1'b1; b=1'b0; c=1'b0; d=1'b0;
	#20;
	
	a=1'b1; b=1'b0; c=1'b0; d=1'b1;
	#20;
	
	a=1'b1; b=1'b0; c=1'b1; d=1'b0;
	#20;
	
	a=1'b1; b=1'b0; c=1'b1; d=1'b1;
	#20;
	
	a=1'b1; b=1'b1; c=1'b0; d=1'b0;
	#20;
	
	a=1'b1; b=1'b1; c=1'b0; d=1'b1;
	#20;
	
	a=1'b1; b=1'b1; c=1'b1; d=1'b0;
	#20;
	
	a=1'b1; b=1'b1; c=1'b1; d=1'b1;
	#20;
	$display("Test Complete");
end

endmodule

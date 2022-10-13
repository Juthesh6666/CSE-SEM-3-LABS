`timescale 1ns/1ns
`include "W3P4.v" 

module W3P4_tb();
reg a,b,c,d;
wire f;

W3P4 ex1(a,b,c,d,f);
initial 
begin

	$dumpfile("W3P4_tb.vcd");
	$dumpvars(0,W3P4_tb);
	
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

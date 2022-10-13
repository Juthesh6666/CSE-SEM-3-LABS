`timescale 1ns/1ns
`include "W3P3.v" 

module W3P3_tb();
reg a,b,c,d,e;
wire f;

W3P3 ex1(a,b,c,d,e,f);
initial 
begin

	$dumpfile("W3P3_tb.vcd");
	$dumpvars(0,W3P3_tb);
	
	a=0; b=0; c=0; d=0; e=0;
	#20;
	
	a=0; b=0; c=0; d=0; e=1;
	#20;
	
	a=0; b=0; c=0; d=1; e=0;
	#20;
	
	a=0; b=0; c=0; d=1; e=1;
	#20;
	
	a=0; b=0; c=1; d=0; e=0;
	#20;
	
	a=0; b=0; c=1; d=0; e=1;
	#20;
	
	a=0; b=0; c=1; d=1; e=0;
	#20;
	
	a=0; b=0; c=1; d=1; e=1;
	#20;
	
	a=0; b=1; c=0; d=0; e=0;
	#20;
	
	a=0; b=1; c=0; d=0; e=1;
	#20;
	
	a=0; b=1; c=0; d=1; e=0;
	#20;
	
	a=0; b=1; c=0; d=1; e=1;
	#20;
	
	a=0; b=1; c=1; d=0; e=0;
	#20;
	
	a=0; b=1; c=1; d=0; e=1;
	#20;
	
	a=0; b=1; c=1; d=1; e=0;
	#20;
	
	a=0; b=1; c=1; d=1; e=1;
	#20;
	
	a=1; b=0; c=0; d=0; e=0;
	#20;
	
	a=1; b=0; c=0; d=0; e=1;
	#20;
	
	a=1; b=0; c=0; d=1; e=0;
	#20;
	
	a=1; b=0; c=0; d=1; e=1;
	#20;
	
	a=1; b=0; c=1; d=0; e=0;
	#20;
	
	a=1; b=0; c=1; d=0; e=1;
	#20;
	
	a=1; b=0; c=1; d=1; e=0;
	#20;
	
	a=1; b=0; c=1; d=1; e=1;
	#20;
	
	a=1; b=1; c=0; d=0; e=0;
	#20;
	
	a=1; b=1; c=0; d=0; e=1;
	#20;
	
	a=1; b=1; c=0; d=1; e=0;
	#20;
	
	a=1; b=1; c=0; d=1; e=1;
	#20;
	
	a=1; b=1; c=1; d=0; e=0;
	#20;
	
	a=1; b=1; c=1; d=0; e=1;
	#20;
	
	a=1; b=1; c=1; d=1; e=0;
	#20;
	
	a=1; b=1; c=1; d=1; e=1;
	#20;
	
	$display("Test Complete");
end

endmodule

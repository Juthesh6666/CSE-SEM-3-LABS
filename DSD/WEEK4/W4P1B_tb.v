`timescale 1ns/1ns
`include "W4P1B.v"

module W4P1B_tb();
reg a,b,cin;
wire s,cout;

W4P1B fa(a,b,cin,s,cout);
initial 
begin 
	$dumpfile("W4P1B_tb.vcd");
	$dumpvars(0,W4P1B_tb);
	
	a=0;b=0;cin=0;#20;
	a=0;b=0;cin=1;#20;
	a=0;b=1;cin=0;#20;
	a=0;b=1;cin=1;#20;
	a=1;b=0;cin=0;#20;
	a=1;b=0;cin=1;#20;
	a=1;b=1;cin=0;#20;
	a=1;b=1;cin=1;#20;
	
	$display("Test Complete");
	
end 
endmodule

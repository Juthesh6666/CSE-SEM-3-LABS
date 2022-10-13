`timescale 1ns/1ns
`include "W1P2.v"
//Name of the Verilog file
module W1P2_tb();
reg a,b,c,d;
//Input
wire g,f;
//Output
W1P2 ex2(a,b,c,d,g,f); //Instantiation of the module
initial
begin
$dumpfile("W1P2_tb.vcd");
$dumpvars(0, W1P2_tb);
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
$display("Test complete");
end
endmodule

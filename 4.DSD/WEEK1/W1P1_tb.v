`timescale 1ns/1ns
`include "W1P1.v"
//Name of the Verilog file
module W1P1_tb();
reg a,b,c,d;
//Input
wire f;
//Output
W1P1 ex2(a,b,c,d, f); //Instantiation of the module
initial
begin
$dumpfile("W1P1_tb.vcd");
$dumpvars(0, W1P1_tb);
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

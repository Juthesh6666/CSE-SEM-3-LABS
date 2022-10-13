`timescale 1ns/1ns
`include "W6P4.v"
module W6P4_tb();
reg [3:0]i;
reg [1:0]s;
wire f;

fourtoone f1(i,s,f);
initial
begin
$dumpfile("W6P4_tb.vcd");
$dumpvars(0,W6P4_tb);

i=4'd5;
s=2'd0; #20;
s=2'd1; #20;
s=2'd2; #20;
s=2'd3; #20;

i=4'd6;
s=2'd0; #20;
s=2'd1; #20;
s=2'd2; #20;
s=2'd3; #20;

$display("Test Complete");
end
endmodule

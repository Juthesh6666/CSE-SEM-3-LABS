`timescale 1ns/1ns
`include "W7P1A.v"
module W7P1A_tb();
reg [3:0]i;
wire f;
W7P1A f1(i,f);
initial
begin
$dumpfile("W7P1A_tb.vcd");
$dumpvars(0,W7P1A_tb);

i=4'b1110; #20;
i=4'b1010; #20;
i=4'b0010; #20;

$display("Test Complete");
end
endmodule

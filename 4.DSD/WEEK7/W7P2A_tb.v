`timescale 1ns/1ns
`include "W7P2A.v"
module W7P2A_tb();
reg [2:0]i;
wire f;
W7P2A f1(i,f);
initial
begin
$dumpfile("W7P2A_tb.vcd");
$dumpvars(0,W7P2A_tb);

i=3'b110; #20;
i=3'b010; #20;
i=3'b101; #20;

$display("Test Complete");
end
endmodule

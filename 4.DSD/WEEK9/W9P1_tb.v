`timescale 1ns/1ns
`include "W9P1.v"
module W9P1_tb();
reg [3:0]i;
reg En;
wire f;
integer j;
W9P1 f1(i,f,En);
initial
begin
$dumpfile("W9P1_tb.vcd");
$dumpvars(0,W9P1_tb);
En=1'b1;
for(j=0;j<16;j=j+1)
begin
i=j; #20;
end
$display("Test Complete");
end
endmodule

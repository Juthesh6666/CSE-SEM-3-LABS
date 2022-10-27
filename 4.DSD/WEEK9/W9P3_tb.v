`timescale 1ns/1ns
`include "W9P3.v"
module W9P3_tb();
reg [2:0]i;
reg En;
wire f;
integer j;
W9P3 f1(i,f,En);
initial
begin
$dumpfile("W9P3_tb.vcd");
$dumpvars(0,W9P3_tb);
En=1'b1;
for(j=0;j<8;j=j+1)
begin
i=j; #20;
end
$display("Test Complete");
end
endmodule

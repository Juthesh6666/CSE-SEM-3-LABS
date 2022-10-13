`timescale 1ns/1ns
`include "W5P3.v"

module W5P3_tb();
reg [3:0] x;
wire [3:0] y;

W5P3 bcdConv(x,y);
initial 
begin 
    $dumpfile("W5P3_tb.vcd");
    $dumpvars(0,W5P3_tb);

    x = 4'b1010;#20;
    x = 4'b1100;#20;
    $display("Test Complete");
end
endmodule

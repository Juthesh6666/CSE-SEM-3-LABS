`timescale 1ns/1ns
`include "W8P5.v"

module W8P5_tb();
reg [15:0] w;
wire [3:0] y;
wire z;

W8P5 q(w,y,z);
initial
begin
    $dumpfile("W8P5_tb.vcd");
    $dumpvars(0,W8P5_tb);

    w = 16'b0000000000000001; #20;
    w = 16'b1000000000000000; #20;
    w = 16'b0000000000000100; #20;
    w = 16'b0010000000000000; #20;

    $display("Test Complete");

end
endmodule

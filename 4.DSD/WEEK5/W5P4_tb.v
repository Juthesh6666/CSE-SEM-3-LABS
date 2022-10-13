`timescale 1ns/1ns
`include "W5P4.v"

module W5P4_tb();
reg [3:0] x,y;
wire gt,eq,lt;

W5P4 W5P4(x,y,gt,eq,lt);
initial 
begin 
    $dumpfile("W5P4_tb.vcd");
    $dumpvars(0,W5P4_tb);

    x = 4'b1010; y = 4'b0110; #20;
    x = 4'b1100; y = 4'b1001; #20;
    x = 4'b0111; y = 4'b0111; #20;
    x = 4'b0001; y = 4'b0010; #20;

    $display("Test Complete");
end
endmodule

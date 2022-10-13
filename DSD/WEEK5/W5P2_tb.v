`timescale 1ns/1ns
`include "W5P2.v"

module W5P2_tb();
reg [(3):0] g;
wire [(3):0] b;

W5P2 gtb(g,b);
initial 
begin
    $dumpfile("W5P2_tb.vcd");
    $dumpvars(0,W5P2_tb);

    g = 4'b0011; #20; //desired output is 0010
    g = 4'b0110; #20; //desired output is 0100

    $display("Test Complete");    
end
endmodule

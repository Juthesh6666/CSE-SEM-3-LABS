`timescale 1ns/1ns
`include "W8P2.v"

module W8P2_tb();
reg [3:0] w;
reg En;
wire [0:15] y;

W8P2 q(w,En,y);
initial
begin
    $dumpfile("W8P2_tb.vcd");
    $dumpvars(0,W8P2_tb);

    w = 4'b0000; En = 1; #20;
    w = 4'b0001; En = 1; #20;
    w = 4'b1101; En = 1; #20;
    w = 4'b1111; En = 1; #20;

    $display("Test Complete");

end
endmodule

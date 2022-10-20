`timescale 1ns/1ns
`include "W8P3.v"

module W8P3_tb();
reg [3:0] w;
reg En;
wire [0:15] y;

W8P3 q(w,En,y);
initial
begin
    $dumpfile("W8P3_tb.vcd");
    $dumpvars(0,W8P3_tb);

    w = 4'b0000; En = 1; #20;
    w = 4'b0001; En = 1; #20;
    w = 4'b0010; En = 1; #20;
    w = 4'b0011; En = 1; #20;
    w = 4'b0100; En = 1; #20;
    w = 4'b0101; En = 1; #20;
    w = 4'b0110; En = 1; #20;
    w = 4'b0111; En = 1; #20;
    w = 4'b1000; En = 1; #20;
    w = 4'b1001; En = 1; #20;
    w = 4'b1010; En = 1; #20;
    w = 4'b1011; En = 1; #20;
    w = 4'b1100; En = 1; #20;
    w = 4'b1101; En = 1; #20;
    w = 4'b1110; En = 1; #20;
    w = 4'b1111; En = 1; #20;

    $display("Test Complete");

end
endmodule

`timescale 1ns/1ns
`include "W8P1.v"

module W8P1_tb();
reg [2:0] w;
reg En;
wire [0:7] y;

W8P1 q(w,En,y);
initial
begin
    $dumpfile("W8P1_tb.vcd");
    $dumpvars(0,W8P1_tb);
    En = 1;
    w = 3'b000;#20;
    w = 3'b001;#20;
    w = 3'b010;#20;
    w = 3'b011;#20;
    w = 3'b100;#20;
    w = 3'b101;#20;
    w = 3'b110;#20;
    w = 3'b111;#20;

    $display("Test Complete");

end
endmodule

`timescale 1ns/1ns
`include "W11P3.v"
module W11P3_tb();
reg clock, Resetn;
wire[3:0] W11P3;
integer i;
auc f1(clock,Resetn, W11P3);

initial
begin
$dumpfile("W11P3_tb.vcd");
$dumpvars(0, W11P3_tb);
clock=0;
forever #10 clock = ~clock;
end

initial
begin
Resetn=0; #10;
Resetn=1; #300;
$display("Test complete");
$finish;
end

endmodule

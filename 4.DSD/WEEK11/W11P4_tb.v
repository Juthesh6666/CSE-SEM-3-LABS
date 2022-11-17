`timescale 1ns/1ns
`include "W11P4.v"
module W11P4_tb();
reg clock, Resetn;
wire[3:0] W11P4;
integer i;
suc f1(clock,Resetn, W11P4);

initial
begin
$dumpfile("W11P4_tb.vcd");
$dumpvars(0, W11P4_tb);
clock=0;
forever #10 clock = ~clock;
end

initial
begin
Resetn=0; #20;
Resetn=1; #300;
$display("Test complete");
$finish;
end

endmodule

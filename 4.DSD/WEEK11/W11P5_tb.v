`timescale 1ns/1ns
`include "W11P5.v"
module W11P5_tb();
reg x,clock, Resetn;
wire[3:0] W11P5;
integer i;
sudc f1(x,clock,Resetn, W11P5);

initial
begin
$dumpfile("W11P5_tb.vcd");
$dumpvars(0, W11P5_tb);
clock=0;
forever #10 clock = ~clock;
end

initial
begin
x=0;
Resetn=0; #20;
Resetn=1; #300;
x=1;
Resetn=0; #20;
Resetn=1; #300;
$display("Test complete");
$finish;
end

endmodule

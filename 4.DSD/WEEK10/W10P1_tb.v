`timescale 1ns/1ns
`include "W10P1.v"
module W10P1_tb();
reg D, clock, Resetn;
wire Q;
dff f1(D, clock, Resetn, Q);

initial
begin
clock=0;
forever #20 clock = ~clock;
end

initial
begin
$dumpfile("W10P1_tb.vcd");
$dumpvars(0, W10P1_tb);

Resetn=1; D = 0; #20;
Resetn=0;
D = 1; #20; 
D = 0; #20;
D = 1;

$display("Test complete");
end
endmodule

`timescale 1ns/1ns
`include "W10P3.v"
module W10P3_tb();
reg J,K, clock, Resetn;
wire Q;
jkff f1(J,K, clock, Resetn, Q);

initial
begin
clock=0;
forever #20 clock = ~clock;
end

initial
begin
$dumpfile("W10P3_tb.vcd");
$dumpvars(0, W10P3_tb);

Resetn=1; J=0; K=0; #20;
Resetn=0; J=0; K=0; #20;
Resetn=0; J=0; K=1; #20;
Resetn=0; J=1; K=0; #20;
Resetn=0; J=1; K=1; #20;


$display("Test complete");
end
endmodule

`timescale 1ns/1ns
`include "W10P2.v"
module W10P2_tb();
reg T, clock, Resetn;
wire Q;
tff f1(T, clock, Resetn, Q);

initial
begin
clock=0;
forever #20 clock = ~clock;
end

initial
begin
$dumpfile("W10P2_tb.vcd");
$dumpvars(0, W10P2_tb);

T <= 0; Resetn <=0; #20;
T <= 0; Resetn <=1; #20;
T <= 1; Resetn <=0; #20;
T <= 1; Resetn <=0; #20;
T <= 1; Resetn <=1; #20;

$display("Test complete");
end
endmodule

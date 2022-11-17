
`timescale 1ns/1ns
`include "W11P2.v"
module W11P2_tb();
reg set,clock, Resetn;
wire[4:0] W11P2;
integer i;
jc f1(clock,set,Resetn, W11P2);

initial
begin
$dumpfile("W11P2_tb.vcd");
$dumpvars(0, W11P2_tb);
clock=0;
forever #20 clock = ~clock;
end

initial
begin
Resetn=0; set=1; #40;
repeat ( 2 )
begin
Resetn=1; set=0; #200;
end
#20;
$display("Test complete");
$finish;
end

endmodule

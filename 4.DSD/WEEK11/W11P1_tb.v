`timescale 1ns/1ns
`include "W11P1.v"
module W11P1_tb();
reg set,clock, Resetn;
wire[3:0] W11P1;
integer i;
rc f1(clock,set,Resetn, W11P1);

initial
begin
$dumpfile("W11P1_tb.vcd");
$dumpvars(0, W11P1_tb);
clock=0;
forever #20 clock = ~clock;
end

initial
begin
repeat ( 2 )
begin
Resetn=0; set=1; #40;
Resetn=1; set=0; #160;
end
#20;
$display("Test complete");
$finish;
end

endmodule


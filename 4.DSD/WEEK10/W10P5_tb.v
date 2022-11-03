`timescale 1ns/1ns
`include "W10P5.v"
module W10P5_tb();
reg clock, Resetn;
reg i;
wire out;
reg5 f1(i,out,clock,Resetn);
always #20 clock = ~clock;
initial
begin
$dumpfile("W10P5_tb.vcd");
$dumpvars(0, W10P5_tb);
clock=0;
Resetn=1;
i = 1'b1; #40;
i = 1'd0; #40; 
i = 1'd0; #40;
i = 1'b0; #40;
i = 1'd1; #40; 
i = 1'd1; #40;
i = 1'b1; #40;
i = 1'd0; #40; 
i = 1'd0; #40;
$display("Test complete");
end
endmodule

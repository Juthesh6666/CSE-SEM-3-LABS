`timescale 1ns/1ns
`include "W6P2.v"

module W6P2_tb();
reg [15:0] w;
reg [3:0] s;
wire f;

W6P2 MUX(w,s,f);
initial 
begin 
    $dumpfile("W6P2_tb.vcd");
    $dumpvars(0,W6P2_tb);

    w = 16'b0000000000000001; s = 4'b0000;#20;
    w = 16'b1000000000000000; s = 4'b1111;#20;
    w = 16'b0000000000000010; s = 4'b0010;#20;
    w = 16'b0000010000000000; s = 4'b0101;#20;

    $display("Test Complete");

end
endmodule

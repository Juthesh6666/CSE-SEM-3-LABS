`timescale 1ns/1ns
`include "W2P1A.v"
module W2P1A_tb;
reg a,b,c,d;
wire f;
W2P1A uut(a,b,c,d,f);
initial begin
        $dumpfile("W2P1A_tb.vcd");
        $dumpvars(0,W2P1A_tb);
             
        a=0;
        b=0;
        c=0;
        d=0;
        #20;
             
        a=0;
        b=0;
        c=0;
        d=1;
        #20;
             
        a=0;
        b=0;
        c=1;
        d=0;
        #20;
             
        a=0;
        b=0;
        c=1;
        d=1;
        #20;
        
        a=0;
        b=1;
        c=0;
        d=0;
        #20;
        
        a=0;
        b=1;
        c=0;
        d=1;
        #20;
             
        a=0;
        b=1;
        c=1;
        d=0;
        #20;
             
        a=0;
        b=1;
        c=1;
        d=1;
        #20;
        
        a=1;
        b=0;
        c=0;
        d=0;
        #20;
        
        a=1;
        b=0;
        c=0;
        d=1;
        #20;
        
        a=1;
        b=0;
        c=1;
        d=0;
        #20;
        
        a=1;
        b=0;
        c=1;
        d=1;
        #20;
        
        a=1;
        b=1;
        c=0;
        d=0;
        #20;
        
        a=1;
        b=1;
        c=0;
        d=1;
        #20;
        
        a=1;
        b=1;
        c=1;
        d=0;
        #20;
        
        a=1;
        b=1;
        c=1;
        d=1;
        #20;
             
             
        $display("Test Complete");
end
endmodule

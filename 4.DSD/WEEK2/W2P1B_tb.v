`timescale 1ns/1ns
`include "W2P1B.v"
module W2P1B_tb;
reg a,b,c,d;
wire f;
W2P1B uut(a,b,c,d,f);
initial begin
        $dumpfile("W2P1B_tb.vcd");
        $dumpvars(0,W2P1B_tb);
             
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

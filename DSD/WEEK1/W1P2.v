module W1P2(a,b,c,d,g,f);
input a,b,c,d;
output g,f;
assign f=((~(a&b))^d^c);
assign g=~(b|c|d);
endmodule

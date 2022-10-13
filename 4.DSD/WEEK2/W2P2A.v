module W2P2A(a,b,c,d,f);
input a,b,c,d;
output f;
or(k1,c,b);
or(k2,~b,d);
and(f,k1,k2);
endmodule

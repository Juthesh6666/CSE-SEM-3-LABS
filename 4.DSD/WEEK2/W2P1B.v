module W2P1B(a,b,c,d,f);
input a,b,c,d;
output f;
and(k1,~b,c);
and(k2,d,~b);
and(k3,~c,~d);
and(k4,k3,b);
or(k5,k1,k2);
or(f,k4,k5);
endmodule

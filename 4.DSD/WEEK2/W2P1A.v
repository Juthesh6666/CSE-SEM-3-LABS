module W2P1A(a,b,c,d,f);
input a,b,c,d;
output f;
and(k1,~a,b);
and(k2,c,d);
and(k3,~b,c);
and(k4,b,~c);
and(k5,k4,~d);
or(k6,k1,k2);
or(k7,k3,k5);
or(f,k6,k7);
endmodule

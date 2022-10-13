module W2P2B(a,b,c,d,f);
input a,b,c,d;
output f;
or(k1,c,d);
or(k2,k1,~b);
or(k3,~d,c);
or(k4,k3,~a);
or(k5,b,~a);
or(k6,k5,~c);
or(k7,a,~c);
or(k8,k7,~b);
and(k9,k2,k4);
and(k10,k6,k8);
and(f,k9,k10);
endmodule

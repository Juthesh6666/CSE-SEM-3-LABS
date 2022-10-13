module W2P3(x1,x2,x3,x4,f);
input x1,x2,x3,x4;
output f;
and(k1,x2,x3);
and(k2,k1,x4);
and(k3,x1,x3);
and(k4,k3,x4);
and(k5,x1,x2);
and(k6,k5,x4);
and(k7,x1,x2);
and(k8,k7,x3);
or(k9,k4,k2);
or(k10,k6,k8);
or(f,k10,k9);
endmodule

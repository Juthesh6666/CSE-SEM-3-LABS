module sudc(x,clock,Resetn,Q);
input x,clock,Resetn;
output [3:0]Q;
tff s0(x|~x,~clock,Resetn,Q[0]);
tff s1((Q[0]&x)|(~x&~Q[0]),~clock,Resetn,Q[1]);
tff s2((Q[1]&Q[0]&x)|(~x&~Q[0]&~Q[1]),~clock,Resetn,Q[2]);
tff s3((Q[2]&Q[1]&Q[0]&x)|(~x&~Q[0]&~Q[1]&~Q[2]),~clock,Resetn,Q[3]);
endmodule

module tff(T,clock,Resetn,Q);
input T,clock,Resetn;
output reg Q;
always @ (posedge clock)
begin
if(!Resetn)
	Q <= 0;
else
	if(T)
		Q <= ~Q;
	else
		Q <= Q;
end
endmodule


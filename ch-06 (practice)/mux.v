module mux(x0, x1, x2, x3, S, Y);
input x0, x1, x2, x3;
input [1:0] S;
output Y;

reg Y;

always @(*)
begin
	if((S[1] == 0) && (S[0] == 0))
		Y = x0;
	else if((S[1] == 0) && (S[0] == 1))
		Y = x1;
	else if((S[1] == 1) && (S[0] == 0))
		Y = x2;
	else
		Y = x3;
end
endmodule
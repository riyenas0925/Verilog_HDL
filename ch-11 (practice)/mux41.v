module mux41(X0, X1, X2, X3, S, Y);
input [1:0] X0, X1, X2, X3, S;
output [1:0] Y;
wire [1:0] a, b;

mux21 U0(X0, X1, S[0], a);
mux21 U1(X2, X3, S[0], b);
mux21 U2(a, b, S[1], Y);

endmodule

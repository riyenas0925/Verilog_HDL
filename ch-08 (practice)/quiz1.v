module half_adder(A, B, Sum, Cout);

input A, B;
output reg Sum, Cout;
wire Cout_bar;

xor U0(Sum, A, B);
nand U1(Cout, A, B);
not U2(Cout,Cout_bar);

endmodule
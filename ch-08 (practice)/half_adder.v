module half_adder(A, B, Sum, Cout);

input A, B;
output Sum, Cout;
wire cout_bar;

xor U0 (Sum, A, B);
nand (cout_bar, A, B);
not U1 (Cout, cout_bar);

endmodule
module full_adder(A, B, Cin, Sum, Cout);

input A, B, Cin;
output Sum, Cout;
wire temp_sum, temp_c1, temp_c2;

half_adder U0(A, B, temp_sum, temp_c1);
half_adder U1(temp_sum, Cin, Sum, temp_c2);
or U2(Cout, temp_c1, temp_c2);

endmodule
module ripple_carry_adder(A, B, Cin, Sum, Cout);

input [3:0] A, B;
input Cin;
output [3:0] Sum;
output Cout;
wire c1, c2, c3;

full_adder U0(A[0], B[0], Cin, Sum[0], c1);
full_adder U1(A[1], B[1], c1, Sum[1], c2);
full_adder U2(A[2], B[2], c2, Sum[2], c3);
full_adder U3(A[3], B[3], c3, Sum[3], Cout);

endmodule
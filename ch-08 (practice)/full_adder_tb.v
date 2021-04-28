module full_adder_tb;

reg A, B, Cin;
wire Sum, Cout;

full_adder U0(A, B, Cin, Sum, Cout);

initial begin
	A = 1; B = 1; Cin = 1;
end

endmodule
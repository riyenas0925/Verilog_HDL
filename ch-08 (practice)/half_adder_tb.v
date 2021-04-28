module half_adder_tb;

reg A, B;
wire Sum, Cout;

half_adder U0(A, B, Sum, Cout);

initial begin
	A = 1; B = 1;
end

endmodule
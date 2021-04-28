module N_bit_adder_tb;

parameter N = 5;

reg [N-1:0] A, B;
reg Cin;
wire [N-1:0] Sum;
wire Cout;

N_bit_adder #(N) U0(A, B, Cin, Sum, Cout);

initial begin
	A = 5'b00111; B = 5'b11111; Cin = 0;
	#10 A = 5'b00111; B = 5'b11111; Cin = 1;
end

endmodule
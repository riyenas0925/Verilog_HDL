module N_bit_adder(A, B, Cin, Sum, Cout);

parameter N;

input [N-1:0] A, B;
input Cin;
output [N-1:0] Sum;
output Cout;
wire [N:0] c;
genvar i;

assign c[0] = Cin;

generate
	for(i=0; i<N; i=i+1) begin :bit
		full_adder U0(A[i], B[i], c[i], Sum[i], c[i+1]);
	end
endgenerate

assign Cout = c[N];

endmodule
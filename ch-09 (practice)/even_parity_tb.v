module even_parity_tb;
reg [15:0] A;
wire OUT;

even_parity U0(A, OUT);

initial begin
	A = 16'b1010_0101_1101_0110;
end
endmodule
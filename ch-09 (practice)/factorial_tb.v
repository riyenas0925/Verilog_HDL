module factorial_tb;
reg [3:0] A;
wire [31:0] OUT;

factorial U0(A, OUT);

initial begin
	A = 5;
	#10 A = 10;
end
endmodule
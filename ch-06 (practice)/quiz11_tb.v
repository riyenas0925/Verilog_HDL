module quiz11_tb;

reg A, clk;
wire Y;

quiz11 U0(A, clk, Y);

always #10 clk = ~clk;

initial begin
	clk = 0; A = 1;
	#500 A = 0;
	#500 A = 1;
	#500 A = 0;
end

endmodule
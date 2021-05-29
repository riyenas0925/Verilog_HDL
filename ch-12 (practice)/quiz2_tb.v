module quiz2_tb;
reg clk, nrst, mode;
wire [7:0] cnt;

quiz2 U0(clk, nrst, mode, cnt);

always #5 clk = ~clk;

initial begin
	clk = 0; nrst = 0; mode = 1;
	#10 nrst = 1;
	#50 mode = 0;
end
endmodule
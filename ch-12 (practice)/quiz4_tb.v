module quiz4_tb;
reg clk, nrst;
wire [3:0] cnt;

quiz4 U0(clk, nrst, cnt);

always #5 clk = ~clk;

initial begin
	clk = 0; nrst = 0;
	#10 nrst = 1;
end
endmodule

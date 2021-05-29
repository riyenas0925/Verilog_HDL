module quiz1_tb;
reg clk, nrst, en;
wire [7:0] cnt;

quiz1 U0(clk, nrst, en, cnt);

always #5 clk = ~clk;

initial begin
	clk = 0; nrst = 0; en = 0;
	#10 nrst = 1; en = 1;
	#40 en = 0;
	#10 en = 1;
end
endmodule
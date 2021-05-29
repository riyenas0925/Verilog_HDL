module quiz6_tb;

reg clk, rst, Slowrun;
wire Read, Write;

quiz6 U0(clk, rst, Slowrun, Read, Write);

always #5 clk = ~clk;

initial begin
	clk = 0; rst = 0; Slowrun = 0;
	#10 rst = 1;
	#10 rst = 0;
	#30 Slowrun = 1;
	#40 Slowrun = 0;
	#40 rst = 1;
end

endmodule
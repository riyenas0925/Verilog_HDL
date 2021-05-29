module frq_div_tb;
reg nrst, clk;
wire clk_div;

frq_div U0(clk, nrst, clk_div);

always #5 clk = ~clk;

initial begin
	clk = 0; nrst = 0;
	#10 nrst = 1;
end

endmodule

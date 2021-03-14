module testmuxex();

reg [3:0] a;
reg [3:0] b;
reg sel, clk;
wire [3:0] out;

initial begin
	clk = 0;
	forever #10 clk = ~clk;
end

initial begin
	sel = 0;
	a = 4;
	b = 6;
	#20 sel = 1;
	#20 sel = 0;
end

muxex dut (a, b, sel, clk, out);

endmodule	
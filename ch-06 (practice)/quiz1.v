`timescale 1ns/1ns

module quiz1;
reg din, clk;

dff U0(clk, din, qout);

always #10 clk = ~clk;

initial begin
	din = 0; clk = 0;
	#40 din = 1;
end

endmodule

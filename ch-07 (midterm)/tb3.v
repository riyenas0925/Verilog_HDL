module tb3;

reg A, B, C, clk;
wire Y;

pb3 U0(A, B, C, clk, Y);

always #5 clk = ~clk;

initial begin
	A = 1; B = 1; C = 0; clk = 0;
end


endmodule
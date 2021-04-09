`timescale 1ns/1ns

module quiz9;
reg a, b;
reg clk;

initial begin
	clk = 0; a = 0; b = 0;
	forever #10 a = ~a;
end

initial begin
	forever #5 b = ~b;
end

initial begin
	clk = (a & b);
end
endmodule
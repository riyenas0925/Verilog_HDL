`timescale 1ns/1ns

module pb5;

reg clk, a, b;

initial begin
	a = 0;
	forever #20 a = ~a;
end

initial begin
	#5 b = 0;
	forever #20 b = ~b;
end

initial begin
	forever #20 clk = a & b;
end


endmodule
`timescale 1ns/1ns

module quiz9;
reg clk;

initial begin
	clk = 0;
	forever begin
		#6 clk = 1;
		#4 clk = 0;
	end
end
endmodule;
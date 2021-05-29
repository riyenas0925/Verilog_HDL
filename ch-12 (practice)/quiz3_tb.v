module quiz3_tb;

reg clk, nrst, load;
reg [3:0] X;
wire Y;

quiz3 U0(clk, nrst, load, X, Y);

always #5 clk = ~clk;

initial begin
	clk = 0; nrst = 0;
	#10 load = 0; X = 4'b1011; nrst = 1;
	#10 load = 1;
	#10 load = 0;
end


endmodule
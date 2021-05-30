module tb1;

reg nRST, CLK, data_in;
wire data_out;

pb1 U0(nRST, CLK, data_in, data_out);

always #5 CLK = ~CLK;

initial begin
	nRST = 1; CLK = 0;
	#10 nRST = 0;
	#10 nRST = 1; data_in = 1;
end
endmodule
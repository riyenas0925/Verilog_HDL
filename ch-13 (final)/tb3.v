module tb3;

reg nRST, CLK, e_in;
reg [7:0] data_in;
wire data_out, e_out;

pb3 U0(nRST, CLK, data_in, e_in, data_out, e_out);

always #5 CLK = ~CLK;

initial begin
	nRST = 1; CLK = 0; e_in = 0;
	#10 nRST = 0; 
	#10 nRST = 1; e_in = 1;
	#10 data_in = 8'b10101011;
	#10 e_in = 0;
end

endmodule

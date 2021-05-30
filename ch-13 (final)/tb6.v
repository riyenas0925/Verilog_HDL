module tb6;

reg nRST, CLK, e_in;
reg [7:0] data_in;
wire data_out;

pb6 U0(nRST, CLK, data_in, e_in, data_out);

always #5 CLK = ~CLK;

initial begin
	nRST = 1; CLK = 0; e_in = 0;
	#10 nRST = 0; 
	#10 nRST = 1; e_in = 1;
	#10 data_in = 8'b00101010;
	#10 e_in = 0;
end

endmodule
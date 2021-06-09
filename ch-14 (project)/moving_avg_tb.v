module moving_avg_tb;

reg [9:0] data_in, mask;
reg nRST, e_in, clk;
wire [9:0] data_out;
wire e_out;

moving_avg U0(data_in, nRST, e_in, mask, data_out, e_out, clk);

always #5 clk = ~clk;

initial begin 
	clk = 0; nRST = 1; e_in = 0; mask = 10;
	#10 nRST = 0;
	#10 nRST = 1; e_in = 1;
	#10 data_in = 80;
	#10 data_in = 60;
	#10 data_in = 75;
	#10 data_in = 68;
	#10 data_in = 55;
	#10 data_in = 49;
	#10 data_in = 90;
	#10 data_in = 70;
	#10 data_in = 10;
	#10 data_in = 5;
	#10 data_in = 9;
	#10 data_in = 88;
	#10 e_in = 0;
end
endmodule
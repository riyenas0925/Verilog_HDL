module moving_avg_tb;

reg [31:0] data_in; 	// 32bit data input
reg [7:0] mask;	    	// average n values
reg nRST, e_in, clk; 	// reset, enable input, clock
wire [31:0] data_out;	// value taken by moving average
wire e_out; 		// enable_output

integer fr, r, i;	// file read  variable
integer fw, w;		// file write variable

moving_avg U0(data_in, nRST, e_in, mask, data_out, e_out, clk);	// import gate

always #5 clk = ~clk;	// clock generate, period of 10

initial begin 
	clk = 0; nRST = 1; e_in = 0; mask = 120; // clock init 0, nRST init 1, e_in init 0, mask size 120
	#10 nRST = 0;				 // nRST set 0 (Low Active reset)
	#10 nRST = 1; e_in = 1; 		 // nRST set 1, e_in set 1;

	fr = $fopen("kakao.txt", "r");		 // kakao.txt (stock_data) open("read")
	fw = $fopen("out.txt", "w"); 		 // out.txt (moving average ouput) open("write")

	for(i = 0; i < 249; i=i+1) begin 	 		// 0 ~ 248
		r = $fscanf(fr, "%d\n", data_in); 		// tock price information one by one
		#10 data_in = r; $fwrite(fw, "%d\n", data_out); // Save the results of the moving average filter.
	end

	#10 e_in = 0; // e_in set 0
end
endmodule
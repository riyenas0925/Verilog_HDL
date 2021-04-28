module MAX_CNT_TB;

reg nRST, CLK, ENi;
wire [3:0] CNTo;

MAX_CNT U0(nRST, CLK, ENi, CNTo);

always #10 CLK = ~CLK;

initial begin
	nRST = 0; CLK = 0; ENi = 0;
	#30 nRST = 1; ENi = 1;
	#200 nRST = 0;
	#10 nRST = 1;
end
endmodule
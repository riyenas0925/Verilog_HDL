module quiz6_tb;
reg CLK, nRST;
wire [3:0] CNT;

quiz6 U0(CLK, nRST, CNT);

always #5 CLK = ~CLK;

initial begin
	CLK = 0; nRST = 0;
	#10 nRST = 1; $display("%d", CNT);
	#10 $display("%d", CNT);
	#10 $display("%d", CNT);
	#10 $display("%d", CNT);
	#10 $display("%d", CNT);
	#10 $display("%d", CNT);
	#10 $display("%d", CNT);
	#10 $display("%d", CNT);
	#10 $display("%d", CNT);
	#10 $display("%d", CNT);
end

endmodule
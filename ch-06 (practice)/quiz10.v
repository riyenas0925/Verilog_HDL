module quiz10;

reg CLK, CLEAR;
reg [3:0] CNT;

always #5 CLK = ~CLK;

initial begin
	CLK = 0; CLEAR = 0;
	#10 CLEAR = 1;
	#45 CLEAR = 0;
	#10 CLEAR = 1;
end

always @(posedge CLK, negedge CLEAR) begin
	if(!CLEAR) begin
		CNT <= 4'b0000;
	end
	else begin
		CNT <= CNT + 1;
	end
end

endmodule
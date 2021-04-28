module Score_Cal_TB;

reg CLK, nRST;
reg [7:0] Di, LOWi, HIGHi;
wire [7:0] SCOREo;

Score_Cal U0(nRST, CLK, Di, LOWi, HIGHi, SCOREo);

always #10 CLK = ~CLK;

initial begin
	nRST = 1; HIGHi = 10; LOWi = 5; CLK = 0;
	#10 Di = 15;
	#400 Di = 1;
	#800 Di = 7;
	
end

endmodule
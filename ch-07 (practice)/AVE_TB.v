module AVE_TB;

reg nRST, CLK, VALIDi;
reg [7:0] Di;
wire VALIDo;
wire [7:0] AVEo;

AVE U0(nRST, CLK, VALIDi, Di, VALIDo, AVEo);

always #10 CLK = ~CLK;

initial begin
	nRST = 1; VALIDi = 1; CLK = 0;
	#10 Di = 10;
	#10 Di = 10;
	#10 Di = 10;
	#20 Di = 20;
end

endmodule

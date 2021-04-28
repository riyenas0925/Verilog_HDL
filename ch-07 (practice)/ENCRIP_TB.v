module ENCRIP_TB;

reg nRST, CLK;
reg [2:0] Din;
wire [4:0] ECRo;

ENCRIP U0(nRST, CLK, Din, ECRo);

always #5 CLK = ~CLK;

initial begin
	CLK = 0; Din = 0;
	#10 Din = 1;
	#10 Din = 7;
end
endmodule
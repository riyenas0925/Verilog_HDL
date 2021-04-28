module AVE (nRST, CLK, VALIDi, Di, VALIDo, AVEo);

input nRST, CLK, VALIDi;
input [7:0] Di;
output VALIDo;
output [7:0] AVEo;

reg [32:0] temp;

always @(posedge CLK) begin
	if(VALIDi) begin
		temp = temp + 
	end
end

endmodule
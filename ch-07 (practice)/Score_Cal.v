module Score_Cal (nRST, CLK, Di, LOWi, HIGHi, SCOREo);

input CLK, nRST;
input [7:0] Di, LOWi, HIGHi;
output [7:0] SCOREo;

reg [7:0] SCOREo = 0;

always @(posedge CLK, negedge nRST) begin
	if(!nRST) begin
		SCOREo = 8'b0;
	end
	else if(HIGHi <= Di) begin
		if(SCOREo >= 29) begin
			SCOREo = 31;
		end
		else begin
			SCOREo = SCOREo + 2;
		end
	end
	else if((LOWi < Di) && (Di < HIGHi)) begin
		if(SCOREo >= 30) begin
			SCOREo = 31;
		end
		else begin
			SCOREo = SCOREo + 1;
		end
	end
	else if(LOWi >= Di) begin
		if(SCOREo <= 0) begin
			SCOREo = 0;
		end
		else begin
			SCOREo = SCOREo - 1;
		end
	end
end

endmodule
module MAX_CNT (nRST, CLK, ENi, CNTo);

input nRST, CLK, ENi;
output [3:0] CNTo;
reg [3:0] CNTo;

always @(posedge CLK, negedge nRST) begin
	if(!nRST) begin
		CNTo <= 4'b0000;
	end
	else begin
		if((ENi == 1) && (CNTo <= 14)) begin
			CNTo = CNTo + 1;
		end
	end
end

endmodule

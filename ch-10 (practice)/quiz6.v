module quiz6(CLK, nRST, CNT);
input CLK, nRST;
output reg [3:0] CNT;

always @(posedge CLK) begin
	if(!nRST) CNT <= 0;
	else begin
		if(CNT == 9) CNT = 0;
		else CNT <= CNT + 1;
	end
end

endmodule
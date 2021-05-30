module pb1(nRST, CLK, data_in, data_out);

input nRST, CLK, data_in;
output reg data_out;

reg [7:0] cnt;

always @(posedge CLK or negedge nRST) begin
	if(!nRST) begin
		cnt <= 0;
		data_out <= 0;
	end
	else begin
		if(cnt == 199) begin
			cnt <= 0;
			data_out <= 1;
		end
		else begin
			data_out <= 0;
			cnt <= cnt + 1;
		end
	end
end

endmodule
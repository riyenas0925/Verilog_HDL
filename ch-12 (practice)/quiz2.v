module quiz2(clk, nrst, mode, cnt);
input clk, nrst, mode;
output reg [7:0] cnt;

always @(posedge clk or negedge nrst or mode) begin
	if(!nrst) cnt <= 0;
	else begin
		if(mode) begin
			if(cnt == 255) cnt <= 255;
			else cnt <= cnt + 1;
		end
		else begin
			if(cnt == 0) cnt <= 0;
			else cnt <= cnt - 1;
		end
	end
end
endmodule
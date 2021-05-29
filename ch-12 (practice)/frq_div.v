module frq_div(clk, nrst, clk_div);
input nrst, clk;
output clk_div;
reg [3:0] cnt;
reg clk_div;

always @(posedge clk or negedge nrst) begin
	if(!nrst) begin
		cnt <= 0;
		clk_div <= 0;
	end
	else begin
		if(cnt == 4) begin
			clk_div <= 1'b1;
			cnt <= cnt + 1;
		end
		else if(cnt == 9) begin
			cnt <= 0;
			clk_div <= 1'b0;
		end
		else begin
			cnt <= cnt + 1;
		end
	end
end
endmodule
module quiz4(clk, nrst, cnt);
input clk, nrst;
output reg [3:0] cnt;

always @(posedge clk or negedge nrst) begin
	if(!nrst) cnt <= 0;
	else begin
		if(cnt == 9) cnt <= 0;
		else cnt <= cnt + 1;
	end
end
endmodule
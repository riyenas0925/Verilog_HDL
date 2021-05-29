module quiz1(clk, nrst, en, cnt);
input clk, nrst, en;
output reg [7:0] cnt;

always @(posedge clk or negedge nrst) begin
	if(!nrst) cnt <= 255;
	else if(en==1'b0) begin
		cnt <= cnt;
	end
	else if(en==1'b1) begin
		cnt <= cnt-1;
	end
end
endmodule
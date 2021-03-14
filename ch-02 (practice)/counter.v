`timescale 1ns/1ns

module counter(en,rst,clk,count);
input en, rst, clk;
output [2:0] count;
reg [2:0] count;

always @(posedge clk or rst)begin
if(!rst) begin
	count <= 0;
end
else begin
	if(en) begin
		count <= count + 1;
	end
	else begin
		count <= count;
	end
end
end

endmodule
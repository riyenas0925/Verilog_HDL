module muxex(a, b, sel, clk, out);

input [3:0] a;
input [3:0] b;
input sel, clk;
output reg [3:0] out;

always @(posedge clk) begin
	if(sel == 0) begin
		out <= a;
	end
	else begin
		out <= b;
	end
end

endmodule	
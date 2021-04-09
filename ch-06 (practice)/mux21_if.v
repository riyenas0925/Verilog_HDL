module mux21_if(a, b, sel, out);
input [1:0] a, b;
input sel;
output [1:0] out;
reg [1:0] out;

always @(a or b or sel)begin
	if(!sel)
		out <= a;
	else
		out <= b;
end
endmodule

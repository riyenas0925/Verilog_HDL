module ALU(a, b, select, out);
input [3:0] a, b;
input [1:0] select;
output [4:0] out;
reg [4:0] out;

always @(select) begin
	casex(select)
		2'b00 : out <= a;
		2'b01 : out <= a + b;
		2'b10 : out <= a - b;
		2'b11 : out <= (a > b);
	endcase
end
endmodule
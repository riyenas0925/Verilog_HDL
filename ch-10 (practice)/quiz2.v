module quiz2(sel, a, b, c, d, y);
input [1:0] sel;
input [3:0] a, b, c, d;
output reg [3:0] y;

always @(sel or a or b or c or d) begin
	case(sel)
		2'b00 : y = a;
		2'b01 : y = b;
		2'b10 : y = c;
		2'b11 : y = d;
		default : y = 4'bx;
	endcase
end 
endmodule
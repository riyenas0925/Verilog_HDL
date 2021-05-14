module dec_3to8(A, en, Y);
input [2:0] A;
input en;
output reg [5:0] Y;

always @(A or en) begin
	if(en == 1) begin
		case(A)
			0 : Y = 6'b100000;
			1 : Y = 6'b010000;
			2 : Y = 6'b001000;
			3 : Y = 6'b000100;
			4 : Y = 6'b000010;
			5 : Y = 6'b000001;
			6 : Y = 6'b000000;
			7 : Y = 6'b111111;
			default: Y = 6'bx;
		endcase
	end
	else begin
		Y = 6'b000000;
	end
end
endmodule
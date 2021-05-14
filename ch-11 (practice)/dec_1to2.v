module dec_1to2(A, Y);
input A;
output reg [1:0] Y;

always @(A) begin
	case(A)
		0 : Y = 4'b01;
		1 : Y = 4'b10;
		default: Y = 2'bx;
	endcase
end
endmodule
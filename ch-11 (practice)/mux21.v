module mux21(X0, X1, S, Y);
input [1:0] X0, X1;
input S;
output reg [1:0] Y;

always @(S or X0 or X1) begin
	case(S)
		0 : Y = X0;
		1 : Y = X1;
		default : Y = 2'bx;
	endcase
end

endmodule
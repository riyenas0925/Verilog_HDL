module enc_4to2(A, en, Y);
input [3:0] A;
input en;
output reg [1:0] Y;

always @(A or en) begin
	if(en == 1) begin
		casex(A)
			4'b0001 : Y = 0;
			4'b0010 : Y = 1;
			4'b0100 : Y = 2;
			4'b1000 : Y = 3;
			default : Y = 2'bx;
		endcase
	end
	else begin
		Y = 0;
	end
end
endmodule
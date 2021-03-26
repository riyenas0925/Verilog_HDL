`timescale 1ns/1ns

module quiz7;

integer A;
reg [9:0] regA;

initial begin
	A= -5'd16;
	regA= A / 4;
end

endmodule


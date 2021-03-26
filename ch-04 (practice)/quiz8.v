`timescale 1ns/1ns

module quiz8;

integer A;
reg [9:0] regA;

initial begin
	A= -5'd20;
	regA= A / 2 ;
end

endmodule

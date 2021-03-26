`timescale 1ns/1ns

module quiz4;

wire [3:0] A, B, C, F;

assign A = 4'b0zz1;
assign B = 4'b10x0;
assign C = 4'b1100;

assign F = B&C;

endmodule
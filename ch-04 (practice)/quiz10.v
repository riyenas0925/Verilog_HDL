`timescale 1ns/1ns

module quiz10;

reg [7:0] rega;
reg [7:0] regb [1:8];

initial begin
	rega = 8'd13;
	regb[1] = 8'd25;
	regb[3] = 8'd48;
end

endmodule
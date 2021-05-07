module word_aligner_tb;
reg [7:0] word_in;
wire [7:0] word_out;

word_aligner U0(word_in, word_out);

initial begin
	word_in = 8'b00000100;
	#10 word_in = 8'b01000111;

end
endmodule
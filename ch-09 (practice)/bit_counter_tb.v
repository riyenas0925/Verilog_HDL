module bit_counter_tb;
reg [7:0] data_word;
wire [3:0] bit_count;

bit_counter U0(data_word, bit_count);

initial begin
	data_word = 4;
	#10 data_word = 13;
end
endmodule
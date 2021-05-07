module bit_counter(data_word, bit_count);
input [7:0] data_word;
output [3:0] bit_count;
reg [3:0] bit_count;

always @(data_word)
	count_ones(data_word, bit_count);

task count_ones;
	input [7:0] reg_a;
	output [3:0] count;
	reg [3:0] count;
	reg [7:0] temp_reg;
begin
	count=0;
	temp_reg=reg_a;
	
	while (temp_reg) begin
		if (temp_reg[0])
			count=count+ 1;
		temp_reg = temp_reg >> 1;
		end
	end
endtask
endmodule

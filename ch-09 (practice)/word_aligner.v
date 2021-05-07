module word_aligner(word_in, word_out);
input [7:0] word_in;
output [7:0] word_out;

function [7:0] word_align;
	input [7:0] word;
begin
	word_align = word;
	if (word_align != 0)
		while (word_align[7] == 0) 
			word_align=word_align << 1;
end
endfunction

assign word_out = word_align (word_in);

endmodule
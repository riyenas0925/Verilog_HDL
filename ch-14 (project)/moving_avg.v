module moving_avg(data_in, nRST, e_in, mask, data_out, e_out, clk);

input [9:0] data_in, mask;
input nRST, e_in, clk;
output reg [9:0] data_out;
output reg e_out;

reg [9:0] data_reg [255 : 0];

integer i;

function [9:0] divider;
	input [31:0] n;
	input [9:0] m;
	reg [31:0] sum;
	begin
		sum = 0;

		for(i = 0; n > sum; i=i+1) begin
			sum = sum + m;
		end 

		divider = i;
	end
endfunction

function [9:0] moving_average;
	input [9:0] mask;
	reg [31:0] sum;
	begin
		sum = 0;

		for(i = 0; i < mask; i=i+1) begin
			if(data_reg[i] === 10'bx) begin
				sum = sum + 0;
			end
			else begin
				sum = sum + data_reg[i];
			end
		end

		moving_average = divider(sum, mask);
	end
endfunction

always @(posedge clk or negedge nRST) begin
	if(!nRST) begin
			data_out <= 0;
	end 
	else begin
		if(e_in) begin
			data_reg[0] <= data_in;

			for(i = 1; i < mask; i=i+1) begin
				data_reg[i] <= data_reg[i - 1];
			end

			data_out <= moving_average(mask);
			e_out <= 1;
		end
	end
end
endmodule



module moving_avg(data_in, nRST, e_in, mask, data_out, e_out, clk);

input [31:0] data_in;		// 32bit data input
input [7:0] mask;		// average n values
input nRST, e_in, clk;		// reset, enable input, clock
output reg [31:0] data_out;	// value taken by moving average
output reg e_out;		// enable_output

reg [31:0] data_reg [255 : 0];	// Buffer to store input values 

integer i;			// Variables to use in repeat statements

function [31:0] divider;	// Function of the division function
	input [31:0] n;		// denominator
	input [31:0] m;		// numerator
	reg [31:0] sum;		// sum of numerator
	begin
		sum = 0;	// init sum

		for(i = 0; n > sum; i=i+1) begin // Repeat until n is greater than sum
			sum = sum + m;		 // Add n to sum
		end 

		divider = i;	// The result is i
	end
endfunction

function [31:0] moving_average; // Function to calculate moving average
	input [7:0] mask;	// mask size
	reg [31:0] sum;		// temp
	begin	
		sum = 0;	// init sum

		for(i = 0; i < mask; i=i+1) begin	// Repeat from 0 to mask - 1 value 
			if(data_reg[i] === 32'bx) begin	// If data_reg[i] is 32'bx, add 0.
				sum = sum + 0;		// Add 0 to sum
			end
			else begin			// If data_reg is not 32'bx, add data_reg[i].
				sum = sum + data_reg[i];// Add data_reg[i] to sum
			end
		end

		moving_average = divider(sum, mask);	// Divide sum into masks.
	end
endfunction

always @(posedge clk or negedge nRST) begin		// Trigger conditions are when clk is high edge and when nRST is low edge.
	if(!nRST) begin					// If nRST is 0
			data_out <= 0;			// data_out set 0
	end 
	else begin					// If nRST is 1
		if(e_in) begin				// If e_in is 1
			data_reg[0] <= data_in;		// Add data_in to data_reg[0]

			for(i = 1; i < mask; i=i+1) begin	// Repeat from 1 to mask -1
				data_reg[i] <= data_reg[i - 1]; // Shift the values
			end

			data_out <= moving_average(mask);	// Output by calculating the moving average
			e_out <= 1;				// e_out set 1
		end
		else begin					// If e_in is 0
			data_reg[0] <= 0;			// Add data_in to 0
			
			for(i = 1; i < mask; i=i+1) begin	// Repeat from 1 to mask -1
				data_reg[i] <= data_reg[i - 1]; // Shift the values
			end

			data_out <= moving_average(mask);	// Output by calculating the moving average
			e_out <= 1;				// e_out set 1
		end
	end
end
endmodule



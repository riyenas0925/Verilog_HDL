module pb4(nRST, CLK, data_in, e_in, data_out, e_out);

input nRST, CLK, e_in;
input [7:0] data_in;
output reg e_out;
output reg [7:0] data_out;

reg [7:0] data_reg [4:0];
reg [2:0] cnt;

always @(posedge CLK or negedge nRST) begin
	if(!nRST) begin
		e_out <= 0;
		cnt <= 0;
		data_out <= 0;
	end
	else begin
		if(e_in) begin
			data_reg[0] <= data_in;
			data_reg[1] <= data_reg[0];
			data_reg[2] <= data_reg[1];
			data_reg[3] <= data_reg[2];
		end
		else if (cnt == 4) begin
			data_out <= 0;
			e_out <= 0;
		end
		else begin
			e_out <= 1;
			data_out <= data_reg[0];
			data_reg[0] <= data_reg[1];
			data_reg[1] <= data_reg[2];
			data_reg[2] <= data_reg[3];
			cnt <= cnt + 1;
		end
	end
end

endmodule

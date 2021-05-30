module pb3(nRST, CLK, data_in, e_in, data_out, e_out);

input nRST, CLK, e_in;
input [7:0] data_in;
output reg data_out, e_out;

reg [7:0] data_reg;
reg [3:0] cnt;

always @(posedge CLK or negedge nRST) begin
		if(!nRST) begin
			e_out <= 0;
			data_out <= 0;
			cnt <= 0;
		end
		else begin
			if(e_in) begin
				data_reg <= data_in;
			end
			else if(cnt == 8) begin
				e_out <= 0;
				data_out <= 0;
			end
			else begin
				e_out <= 1;
				data_out <= data_reg[7];
				data_reg[7:1] <= data_reg[6:0];
				cnt <= cnt + 1;
			end
		end
	end
endmodule


module pb6(nRST, CLK, data_in, e_in, data_out);

input nRST, CLK, e_in;
input [7:0] data_in;
output reg data_out;

reg [10:0] data_reg;
reg [3:0] cnt;

always @(posedge CLK or negedge nRST) begin
		if(!nRST) begin
			data_reg[0] = 1;
			data_reg[10] = 0;
			data_out <= 1;
			cnt <= 0;
		end
		else begin
			if(e_in) begin
				data_reg[9:2] <= data_in; 
				if(data_in[0] == 0) begin
					data_reg[1] = 1;
				end
				else begin
					data_reg[1] = 0;
				end
			end
			else if(cnt == 8) begin
				data_out <= 1;
			end
			else begin
				data_out <= data_reg[10];
				data_reg[10:1] <= data_reg[9:0];
				cnt <= cnt + 1;
			end
		end
	end
endmodule

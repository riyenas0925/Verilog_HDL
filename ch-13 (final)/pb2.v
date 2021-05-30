module pb2(data_in, data_out);

parameter N = 10, S = 10;

input [N-1 : 0] data_in;
output reg [S-1 : 0] data_out;
reg [N-1 : 0] temp;

always @(data_in) begin
	temp = data_in;
	data_out = 0;
	while(temp) begin
		if(temp[0] == 1) begin
			data_out = data_out + 1;
		end
		temp = temp >> 1;
	end
end
endmodule
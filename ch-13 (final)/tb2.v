module tb2;

reg [4 : 0] data_in;
wire [4 : 0] data_out;

pb2 #(5,5) U0(data_in, data_out);

initial begin
	#10 data_in = 5'b11110;
	#10 data_in = 5'b11100;
	#10 data_in = 5'b11000;
end
endmodule
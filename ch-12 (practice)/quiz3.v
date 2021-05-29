module quiz3(clk, nrst, load, X, Y);

input clk, nrst, load;
input [3:0] X;
output Y;
reg [3:0] data;

assign Y = data[0];

always @(posedge clk, negedge nrst) begin
	if(!nrst) begin
		data <= 0;
	end
	else begin
		if(load == 1'b1) data <= X;
		else begin
			data <= (data >> 1);
		end
	end
end

endmodule
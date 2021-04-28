module FIND_MAX (Din0, Din1, Din2, MAXo);

input [7:0] Din0, Din1, Din2;
output [7:0] MAXo;
reg [7:0] MAXo;

always @(*) begin
	if((Din0 > Din1) && (Din0 > Din2)) begin
		MAXo = Din0;
	end
	else begin
		if(Din1 > Din2)
			MAXo = Din1;
		else
			MAXo = Din2;
	end
end

endmodule
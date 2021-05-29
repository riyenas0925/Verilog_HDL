module quiz6(clk, rst, Slowrun, Read, Write);

input clk, rst, Slowrun;
output reg Read, Write;

reg [1:0] CurrentState, NextState;

parameter [1:0] ST_Read = 0, ST_Write = 1, ST_Delay = 2;

always @(posedge clk) begin
	if(rst) begin
		CurrentState = ST_Read;
	end
	else begin
		CurrentState = NextState;
	end
end

always @(*) begin
	case(CurrentState)
		ST_Read: begin
			Read = 1;
			Write = 0;
			NextState = ST_Write;
		end
		ST_Write: begin
			Read = 0;
			Write = 1;
			if(Slowrun)
				NextState = ST_Delay;
			else
				NextState = ST_Read;
		end
		ST_Delay: begin
			Read = 0;
			Write = 0;
			NextState = ST_Read;
		end
		default: begin
			Read = 0;
			Write = 0;
			NextState = ST_Read;
		end
	endcase
end

endmodule
module ENCRIP(nRST,CLK,Din,ECRo);

input nRST, CLK;
input [2:0] Din;
output reg [4:0] ECRo;
wire [4:0] addr [7:0];

assign addr[0]=6;
assign addr[1]=5;
assign addr[2]=10;
assign addr[3]=16;
assign addr[4]=1;
assign addr[5]=8;
assign addr[6]=11;
assign addr[7]=20;

always @(posedge CLK,negedge nRST) begin
	if(!nRST) ECRo <=0;
	else begin
		case(Din)
			0: ECRo<=addr[0];
			1: ECRo<=addr[1];
			2: ECRo<=addr[2];
			3: ECRo<=addr[3];
			4: ECRo<=addr[4];
			5: ECRo<=addr[5];
			6: ECRo<=addr[6];
			7: ECRo<=addr[7];
		endcase
	end
end

endmodule
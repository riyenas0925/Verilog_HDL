`timescale 1ns/1ns

module tb_nor;
reg [3:0] a,b;
wire [3:0] y;

nor_op UO(a,b,y);

initial begin
a = 4'b0000; b = 4'b0000;
#10 a = 4'b1000; b = 4'b1001;
#10 a = 4'b1111; b = 4'b1100;
#10 a = 4'b1101; b = 4'b1010;
#10;
end

endmodule 
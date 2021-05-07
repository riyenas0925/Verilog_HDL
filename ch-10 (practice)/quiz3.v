module quiz3(sel, a, b, c, d, y);
input [1:0] sel;
input [3:0] a, b, c, d;
output reg [3:0] y;

assign y = sel[1] ? (sel[0] ? d : c) : (sel[0] ? b : a);

endmodule

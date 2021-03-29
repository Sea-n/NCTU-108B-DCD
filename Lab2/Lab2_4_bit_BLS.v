// `include "Lab2_CLG_gate.v"
module Lab2_4_bit_BLS(D, Bout, X, Y, Bin);
	output [3:0] D;
	output Bout;
	input [3:0] X, Y;
	input Bin;
	wire reg [3:0] P, G, B;
	wire reg [4:0] Bx;

	assign Bx = {B, Bin};

	assign P = (~X) | Y;
	assign G = (~X) & Y;
	assign D = X ^ Y ^ Bx;

	assign Bout = Bx[4];

	Lab2_CLG_gate CLG(B, P, G, Bin);
endmodule

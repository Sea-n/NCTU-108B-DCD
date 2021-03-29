// `include "Lab2_CLG_gate.v"
module Lab2_4_bit_CLA(S, Cout, A, B, Cin);
	output [3:0] S;
	output Cout;
	input  [3:0] A, B;
	input  Cin;
	wire reg [3:0] P, G, C;
	wire reg [4:0] Cx;

	assign Cx = {C, Cin};

	assign P = A ^ B;
	assign G = A & B;
	assign S = P ^ Cx;

	assign Cout = Cx[4];

	Lab2_CLG_gate CLG(C, P, G, Cin);
endmodule

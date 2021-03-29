module Lab3_BCD_to_Excess3_structure(output z, input x, clock, reset);
	wire reg A, B, C;
	wire DA, DB, DC;

	assign DA = A & ~B & ~C  |  ~A & B  |  ~A & C & x;
	assign DB = ~B & ~C & x  |  ~A & ~B & C & ~x;
	assign DC = ~A & ~B & ~x  |  ~A & B & C  |  ~B & ~C & ~x;
	assign z = ~A & ~B & ~x  |  B & x  |  A & ~C & ~x  | A & C & x;

	D_ff_AR MA(A, DA, clock, reset);
	D_ff_AR MB(B, DB, clock, reset);
	D_ff_AR MC(C, DC, clock, reset);
endmodule

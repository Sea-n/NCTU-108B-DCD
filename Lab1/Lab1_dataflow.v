module	Lab1_dataflow(F, A, B, C, D);
	output	F;
	input	A, B, C, D;
	wire	w1, w2, w3, w4, w5, w6, w7, w8;
	
	assign w1 = ~D;
	assign w2 = ~B;
	assign w3 = ~A;

	assign w4 = A & w1;
	assign w5 = w2 & C;
	assign w6 = C & D;

	assign w7 = w4 | w5;
	assign w8 = w6 | w3;

	assign F = w7 & w8;
endmodule

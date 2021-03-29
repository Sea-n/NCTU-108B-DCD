module	Lab1_gatelevel_UDP(F, A, B, C, D);
	output	F;
	input	A, B, C, D;
	wire	w1, w2, w3, w4, w5, w6;
	
	not G1(w1, D);
	not G2(w2, B);
	Lab1_UDP(w5, A, w1, w2, C);

	not G3(w3, A);
	and G6(w4, C, D);
	or G8(w6, w4, w3);

	and G9(F, w5, w6);
endmodule

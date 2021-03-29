module Lab2_CLG_gate(C, P, G, C0);
	output [4:1] C;
	input  [3:0] P, G;
	input C0;
	wire w00,
		 w10, w11,
		 w20, w21, w22,
		 w30, w31, w32, w33;

	and G00(w00, C0, P[0]);
	or  G0X(C[1], G[0], w00);

	and G10(w10, G[0], P[1]);
	and G11(w11, C0,   P[0], P[1]);
	or  G1X(C[2], G[1], w11, w10);

	and G20(w20, G[1], P[2]);
	and G21(w21, G[0], P[2], P[1]);
	and G22(w22, C0,   P[0], P[1], P[2]);
	or  G2X(C[3], G[2], w22, w20, w21);

	and G30(w30, G[2], P[3]);
	and G31(w31, G[1], P[3], P[2]);
	and G32(w32, G[0], P[3], P[2], P[1]);
	and G33(w33, C0,   P[0], P[1], P[2], P[3]);
	or  G3X(C[4], G[3], w33, w30, w31, w32);
endmodule

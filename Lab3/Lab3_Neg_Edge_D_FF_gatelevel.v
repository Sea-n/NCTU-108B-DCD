module Lab3_Neg_Edge_D_FF_gatelevel(
	output Q, NQ,
	input D, clock);

	wire w, x, y, z, v;

	or G0(v, x, clock);
	
	Lab3_SR_Latch_gatelevel G1(w,  x, clock, z);
	Lab3_SR_Latch_gatelevel G2(y,  z, D, v);
	Lab3_SR_Latch_gatelevel G3(Q, NQ, y, x);
endmodule

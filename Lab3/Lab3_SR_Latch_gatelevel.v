module Lab3_SR_Latch_gatelevel(
	output Q, NQ,
	input S, R);

	nor #2 G0( Q, R, NQ);
	nor #2 G1(NQ, S,  Q);
endmodule

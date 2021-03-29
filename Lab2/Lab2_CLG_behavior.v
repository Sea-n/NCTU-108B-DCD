module Lab2_CLG_behavior(C, P, G, C0);
	output reg [4:1] C;
	input [3:0] P, G;
	input C0;

	always @(*) begin
		C[1] = G[0] | C0&P[0];

		C[2] = G[1] | G[0]&P[1] | C0&P[0]&P[1];

		C[3] = G[2] | G[1]&P[2] | G[0]&P[2]&P[1] | C0&P[0]&P[1]&P[2];

		C[4] = G[3] | G[2]&P[3] | G[1]&P[3]&P[2] | G[0]&P[3]&P[2]&P[1] | C0&P[0]&P[1]&P[2]&P[3];
	end
endmodule

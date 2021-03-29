module Lab3_BCD_to_Excess3_state_diagram(output reg z, input x, clock, reset);
	reg [2:0] state, ns;
	parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010,
		S3 = 3'b011, S4 = 3'b100, S5 = 3'b101, S6 = 3'b110;

	always @(posedge clock, negedge reset)
		if (!reset) state <= S0;
		else state <= ns;

	always @(state, x)
		case (state)
			S0: if (x) ns <= S2; else ns <= S1;
			S1: if (x) ns <= S4; else ns <= S3;
			S2: ns <= S4;
			S3: ns <= S5;
			S4: if (x) ns <= S6; else ns <= S5;
			S5: ns <= S0;
			S6: ns <= S0;
		endcase

	always @(state, x)
		case (state)
			S0: z <= ~x;
			S1: z <= ~x;
			S2: z <= x;
			S3: z <= x;
			S4: z <= ~x;
			S5: z <= x;
			S6: z <= ~x;
		endcase
endmodule

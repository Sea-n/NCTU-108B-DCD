// `include "Lab2_CLG_gate.v"
// `include "Lab2_CLG_dataflow.v"
// `include "Lab2_CLG_behavior.v"

module t_Lab2_CLG;
	wire [4:1] C1, C2, C3;
	reg  [3:0] P, G;
	reg C0;

	wire [4:1] C12, C13, C23;

	Lab2_CLG_gate		M1(C1, P, G, C0);
	Lab2_CLG_dataflow	M2(C2, P, G, C0);
	Lab2_CLG_behavior	M3(C3, P, G, C0);

	assign C12 = C1 ^ C2;
	assign C13 = C1 ^ C3;
	assign C23 = C2 ^ C3;

	initial begin
		$dumpfile("Lab2_CLG.vcd");
		$dumpvars;
		C0 = 1'b0; #25600
		C0 = 1'b1; #25600

		$finish;
	end

	always @C0 begin
		P = 5'b0;
		repeat(15)
		#1600 P = P + 1'b1;
	end

	always @P begin
		G = 5'b0;
		repeat(15)
		#100 G = G + 1'b1;
	end

endmodule

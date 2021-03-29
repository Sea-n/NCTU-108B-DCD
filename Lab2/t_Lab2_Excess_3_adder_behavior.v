// `include "Lab2_Excess_3_adder_behavior.v"
module t_Lab2_Excess_3_adder_behavior;
	wire [3:0] S;
	wire Cout;
	reg  [3:0] A, B;
	reg  Cin;

	Lab2_Excess_3_adder_behavior M(S, Cout, A, B, Cin);

	initial begin
		$dumpfile("Lab2_Excess_3_adder.vcd");
		$dumpvars;
		Cin = 1'b0; #25600
		Cin = 1'b1; #25600

		$finish;
	end

	always @Cin begin
		A = 5'b0;
		repeat(15)
		#1600 A = A + 1'b1;
	end

	always @A begin
		B = 5'b0;
		repeat(15)
		#100 B = B + 1'b1;
	end
endmodule

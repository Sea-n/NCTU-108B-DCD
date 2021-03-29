// `include "Lab2_4_bit_CLA.v"
// `include "Lab2_adder.v"
module t_Lab2_4_bit_CLA;
	wire [3:0] S0, S1, S01;
	wire C0, C1, C01;
	reg  [3:0] A, B;
	reg  Cin;

//	A4 M0(S0, C0, A, B, Cin);
	Lab2_4_bit_CLA M1(S1, C1, A, B, Cin);

//	assign S01 = S0 ^ S1;
//	assign C01 = C0 ^ C1;

	initial begin
		$dumpfile("Lab2_4_bit_CLA.vcd");
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

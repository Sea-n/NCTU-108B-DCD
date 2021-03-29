// `include "Lab2_4_bit_BLS.v"
// `include "Lab2_suber.v"
module t_Lab2_4_bit_BLS;
	wire [3:0] D0, D1, D01;
	wire B0, B1, B01;
	reg  [3:0] X, Y;
	reg  Bin;

//	S4 M0(D0, B0, X, Y, Bin);
	Lab2_4_bit_BLS M1(D1, B1, X, Y, Bin);

//	assign D01 = D0 ^ D1;
//	assign B01 = B0 ^ B1;

	initial begin
		$dumpfile("Lab2_4_bit_BLS.vcd");
		$dumpvars;
		Bin = 1'b0; #25600
		Bin = 1'b1; #25600

		$finish;
	end

	always @Bin begin
		X = 5'b0;
		repeat(15)
		#1600 X = X + 1'b1;
	end

	always @X begin
		Y = 5'b0;
		repeat(15)
		#100 Y = Y + 1'b1;
	end
endmodule

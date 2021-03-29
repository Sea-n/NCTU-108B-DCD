module Lab2_Excess_3_adder_behavior(S, Cout, A, B, Cin);
	output reg [3:0] S;
	output reg Cout;
	input  [3:0] A, B;
	input  Cin;
	reg [4:0] k;

	always @(*) begin
		k = A + B + Cin;
		if (k[4] == 0)
			k = k - 3;
		else
			k = k + 3;
		S = k[3:0];
		Cout = k[4];
	end
endmodule

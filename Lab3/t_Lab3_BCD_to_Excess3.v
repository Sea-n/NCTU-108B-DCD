module t_Lab3_BCD_to_Excess3;
	wire z0, z1, z2;
	reg x, clock, reset;
	reg [3:0] bcd, ex0, ex1, ex2;
	integer i;

	/* Setup */
	initial begin
		$dumpfile("Lab3_BCD_to_Excess3.vcd");
		$dumpvars;

		clock = 1'b1;  // Clock start from high, 101010
		bcd = 4'b0000;

		reset = 1'b0;  // send reset signal
		#1 reset = 1'b1;
	end

	always #5 clock = ~clock;  // Clock pluse every 10s

	Lab3_BCD_to_Excess3_state_diagram M1(z1, x, clock, reset);
	Lab3_BCD_to_Excess3_structure     M2(z2, x, clock, reset);
	assign z0 = z1 ^ z2;

	/* Test cases */
	always #40
		if (bcd == 4'b1001)
			bcd = 4'b0000;  // 9 + 1 = 0
		else
			bcd += 1;

	always
		for (i=0; i<4; i=i) begin
			x = bcd[i];  // assign value before sleep 10s
			#10 i = i+1;
		end

	/* Parse result */
	always @(i, z1, z2) begin // share with TX clock
		if (i == 0) begin
			ex1 = 4'b0000;
			ex2 = 4'b0000;
			ex0 = 4'b0000;
		end

		// use i from previus
		ex1[i] = z1;
		ex2[i] = z2;
		ex0[i] = z1 ^ z2;
	end

	/* End */
	initial #800 $finish;  // repeat 0~9 for 2 times
endmodule

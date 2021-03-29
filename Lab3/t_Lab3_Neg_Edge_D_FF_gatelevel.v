module t_Lab3_Neg_Edge_D_FF_gatelevel;
	wire Q, NQ;
	reg D, clock;

	Lab3_Neg_Edge_D_FF_gatelevel M(Q, NQ, D, clock);

	initial begin
		$dumpfile("Lab3_D_FF.vcd");
		$dumpvars;
		clock = 1'b1;

		fork
			#0   D = 1'b0;
			#15  D = 1'b1;
			#35  D = 1'b0;
			#65  D = 1'b1;
			#88  D = 1'b0;
			#125 D = 1'b1;
			#130 D = 1'b0;
		join

		#70 $finish;
	end

	always #10
		clock = ~clock;
endmodule

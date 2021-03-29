module	t_Lab1_gatelevel_UDP;
	wire	F;
	reg		A, B, C, D;
	
	//instantiate device under test
	Lab1_gatelevel_UDP	M1(F, A, B, C, D);
	
	//apply inputs one at a time
	initial	begin
		$dumpfile("Lab1_gatelevel_UDP.vcd");
		$dumpvars;
		A=1'b0; B=1'b0; C=1'b0; D=1'b0;
		#100 A=1'b0; B=1'b0; C=1'b0; D=1'b1;
		#100 A=1'b0; B=1'b0; C=1'b1; D=1'b0;
		#100 A=1'b0; B=1'b0; C=1'b1; D=1'b1;
		#100 A=1'b0; B=1'b1; C=1'b0; D=1'b0;
		#100 A=1'b0; B=1'b1; C=1'b0; D=1'b1;
		#100 A=1'b0; B=1'b1; C=1'b1; D=1'b0;
		#100 A=1'b0; B=1'b1; C=1'b1; D=1'b1;
		#100 A=1'b1; B=1'b0; C=1'b0; D=1'b0;
		#100 A=1'b1; B=1'b0; C=1'b0; D=1'b1;
		#100 A=1'b1; B=1'b0; C=1'b1; D=1'b0;
		#100 A=1'b1; B=1'b0; C=1'b1; D=1'b1;
		#100 A=1'b1; B=1'b1; C=1'b0; D=1'b0;
		#100 A=1'b1; B=1'b1; C=1'b0; D=1'b1;
		#100 A=1'b1; B=1'b1; C=1'b1; D=1'b0;
		#100 A=1'b1; B=1'b1; C=1'b1; D=1'b1;
	end
	initial #1600 $finish;
endmodule

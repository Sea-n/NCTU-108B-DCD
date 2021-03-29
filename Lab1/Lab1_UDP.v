primitive	Lab1_UDP(F, A, B, C, D);
	output	F;
	input	A, B, C, D;

	table
	//  A B C D   F
		1 1 ? ? : 1;
		? ? 1 1 : 1;
		? 0 ? 0 : 0;
		? 0 0 ? : 0;
		0 ? ? 0 : 0;
		0 ? 0 ? : 0;
	endtable
endprimitive

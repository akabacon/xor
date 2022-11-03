module cmos_xor(C,A,B);
	output C;
	input A;
	input B;
	supply0 GND;
	supply1 PWR;
	wire D;


	pmos(D,PWR,A);
/*
	pmos (D,A,PWR);
	nmos (GND,A,D);


	pmos (xor_out,B,A);
	nmos (D,B,xor_out);

	pmos (xor_out,A,B);
	nmos (B,D,xor_out);
*/	
	
endmodule

//pmos (out,gate,in);
//nmos (in,gate,out);
module cmos_xor(xor_out,A,B);
	output xor_out;
	input A,B;
	supply0 GND;
	supply1 PWR;
	wire D1,D2,E1,E2,E3,N_A,N_B;
	
	pmos (N_A,PWR,A);
	nmos (N_A,GND,A);
	
	pmos (N_B,PWR,B);
	nmos (N_B,GND,B);
	
	//upper
	nmos(D1,PWR,N_A);
	nmos(xor_out,D1,B);

	nmos(D2,PWR,A);
	nmos(xor_out,D2,N_B);
		

	//lower
	nmos(E1,GND,A);
	nmos(xor_out,E1,B);

	nmos(E2,GND,N_A);
	nmos(xor_out,E2,N_B);
	
	
	
endmodule

//pmos (out,in,ctrl);
//nmos (out,in,ctrl);

//inverter
//pmos (inv_out,PWR,inv_in);
//nmos (inv_out,GND,inv_in);
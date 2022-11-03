module tb_xor;
     wire xor_out;
     reg xor_in1,xor_in2;
     cmos_xor M1(xor_out,xor_in1,xor_in2);
     initial
     begin

	    xor_in1=1'b0; xor_in2=1'b0;
        #10 xor_in1=1'b0; xor_in2=1'b1;
        #10 xor_in1=1'b1; xor_in2=1'b0;
        #10 xor_in1=1'b1; xor_in2=1'b1;
	
     end
     initial #200 $finish;
endmodule 
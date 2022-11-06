module tb_xor;
     wire w1;
     reg r1,r2;
     cmos_xor M1(w1,r1,r2);
     initial
     begin

	    r1=1'b0; r2=1'b0;
        #10 r1=1'b0; r2=1'b1;
        #10 r1=1'b1; r2=1'b0;
        #10 r1=1'b1; r2=1'b1;

     end
     initial #200 $finish;
endmodule 
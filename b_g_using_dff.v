module dff(input d, e,
			output q);
			
assign q = e ? d : 0;

endmodule 

module g_b(input b3, b2, b1, b0,
		  output g3, g2, g1, g0);
		  
   
  
  buf buf1(t1, b3);
  
  dff d1(t1, 1, g3);
  
  xor xor1(t2, b3, b2);
  
  dff d2(t2, 1, g2);
  
  xor xor2(t3, g2, b1);
  
  dff d3(t3, 1, g1);
  
  xor xor3(t4, g1, b0);
  
  dff d4(t4, 1, g0);
  
  endmodule 

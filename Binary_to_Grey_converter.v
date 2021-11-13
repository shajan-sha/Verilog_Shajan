module Binary_to_Grey_converter(input b3, b2, b1, b0,
			output g3, g2, g1, g0);


assign g3 = b3;
assign g2 = g3 ^ b2;
assign g1 = g2 ^ b1;
assign g0 = g1 ^ b0;
  
  

module Grey_to_binary_converter(output b3, b2, b1, b0,
			input g3, g2, g1, g0);
  assign b3 = g3;
  assign b2 = g3 ^ g2;
  assign b1 = g2 ^ g1;
  assign b0 = g1 ^ g0;
endmodule 

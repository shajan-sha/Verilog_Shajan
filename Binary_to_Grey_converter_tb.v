module t;

//reg b3, b2, b1, b0;
wire b3, b2, b1, b0;
  
//wire g3, g2, g1, g0;
reg g3, g2, g1, g0;
integer i;

//b_g_df DUT(b3, b2, b1, b0, g3, g2, g1, g0);
g_b_df DUT2(b3, b2, b1, b0, g3, g2, g1, g0);

initial
begin
//$monitor("b3 = %b, b2 = %b, b1 = %b, b0 = %b, g3 = %b, g2 = %b, g1 = %b, g0 = %b", b3, b2, b1, b0, g3, g2, g1, g0);

 $monitor("g3 = %b, g2 = %b, g1 = %b, g0 = %b,b3 = %b, b2 = %b, b1 = %b, b0 = %b, ", g3, g2, g1, g0, b3, b2, b1, b0);

for(i = 0; i < 16; i = i+1)
begin
  #1;
//{b3, b2, b1, b0} = i;
{g3, g2, g1, g0} = i;
end

end
endmodule

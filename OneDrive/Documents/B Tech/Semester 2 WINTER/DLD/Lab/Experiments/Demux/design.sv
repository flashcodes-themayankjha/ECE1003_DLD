//@Mayankjha 23BCE7483
//Demux 
module demux1_4 (
  input I, s0, s1,
  output y3, y2, y1, y0
);        // module demux1_4 declares a module named demux1_4
          // Inputs I, s0 s1 and outputs y3, y2, y1, y0
  assign y0 = I & (~s0) & (~s1); // Routes input I to y0 when both s0 and s1 are low
  assign y1 = I & (s0) & (~s1);  // Routes input I to y1 when s0 is high and and s1 is low
  assign y2 = I & (~s0) & (s1);  // Routes input I to y2 when s0 is low and and s1 is high
  assign y3 = I & (s0) & (s1);    // Routes input I to y3 when both s0 and s1 are high
endmodule

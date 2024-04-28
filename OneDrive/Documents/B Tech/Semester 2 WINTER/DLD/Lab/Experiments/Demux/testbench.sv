//@Mayankjha 23BCE7483
//Demux
module test_demux; // declares a testbench module named test_demux 
  reg t_I, t_s0, t_s1;    // declares registers for testbench inputs
  wire t_y3, t_y2, t_y1, t_y0; // declares wires for testbench outputs

  
  demux1_4 uut (
    .I(t_I), .s0(t_s0), .s1(t_s1),
    .y3(t_y3), .y2(t_y2), .y1(t_y1), .y0(t_y0)
  );                 // Instantiates the demux1_4 module and connects its inputs and outputs to testbench signals.

  initial begin
    $dumpvars(1, test_demux); // Records signals for waveform viewing
    t_s0 = 1'b0;
    t_s1 = 1'b0;
    t_I = 1'b1;
    #10
    t_s0 = 1'b1;
    t_s1 = 1'b0;
    t_I = 1'b1;
    #10
    t_s0 = 1'b0;
    t_s1 = 1'b1;
    t_I = 1'b1;
    #10
    t_s0 = 1'b1;
    t_s1 = 1'b1;
    t_I = 1'b1;
    #10
    $stop;
  end
endmodule
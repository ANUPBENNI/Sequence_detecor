module sdmf_tb;

	// Inputs
	reg clock;
	reg reset;
	reg sequence_in;

	// Outputs
	wire detector_out;

	// Instantiate the Unit Under Test (UUT)
	SDMF uut (
		.clock(clock), 
		.reset(reset), 
		.sequence_in(sequence_in), 
		.detector_out(detector_out)
	);

	initial begin
 clock = 0;
 forever #5 clock = ~clock;
 end 
 initial begin
  // Initialize Inputs
  sequence_in = 0;
  reset = 1;
  // Wait 100 ns for global reset to finish
  #30;
      reset = 0;
  #40;
  sequence_in = 1;
  #10;
  sequence_in = 0;
  #10;
  sequence_in = 1; 
  #20;
  sequence_in = 0; 
  #20;
  sequence_in = 1; 
  #20;
  sequence_in = 0;  
  // Add stimulus here

 end
      
      
endmodule


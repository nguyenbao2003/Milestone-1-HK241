module milestone1_tb;

	// Signals
	logic i_clk;
	logic i_nickle;
	logic i_dime;
	logic i_quarter;
	logic o_soda;
	logic [2:0] o_change;

	// Instantiate the Unit Under Test (UUT)
	milestone1 uut (
	.i_clk		(i_clk		),
	.i_nickle	(i_nickle	),
   .i_dime		(i_dime		),
   .i_quarter	(i_quarter	),
	.o_soda		(o_soda		),
   .o_change	(o_change	)
	);

  // Clock Generation
	initial begin
		i_clk = 0;
		forever #20 i_clk = ~i_clk;  // 40 ns period
	end

	// Input stimulus
	initial begin
		// Initialize inputs
		i_nickle = 0;
		i_dime = 0;
		i_quarter = 0;

		// Apply input stimulus
//		@(posedge i_clk);
//		@(posedge i_clk);	
//		i_nickle = 1;
//		@(posedge i_clk);  // Wait for one clock cycle
//		@(posedge i_clk);
//		i_nickle = 0;	
//		i_quarter = 1;
//		@(posedge i_clk);
//		i_quarter = 0;
//		i_dime = 1;
//
//		@(posedge i_clk);
//		i_dime = 0;
//		@(posedge i_clk);
//		i_quarter = 1;
//
//		@(posedge i_clk);
//		i_quarter = 0;
//		i_nickle = 1;
//		@(posedge i_clk);
//		i_nickle = 0;
//		i_dime = 1;
//
//		@(posedge i_clk);
//		i_dime = 0;
//		i_quarter = 1;
//		@(posedge i_clk);
//		i_quarter = 0;
//		i_nickle = 1;
//
//		@(posedge i_clk);
//		@(posedge i_clk);
//		i_dime = 0;
		@(posedge i_clk);
		@(posedge i_clk);
		@(posedge i_clk);
		
		i_dime = 1;
		
		@(posedge i_clk);
		i_dime = 0;
		
		@(posedge i_clk);
		i_quarter = 1;
		
		@(posedge i_clk);
		i_quarter = 0;
		
		@(posedge i_clk);
		i_nickle = 1;
		
		@(posedge i_clk);
		i_nickle = 0;
		i_dime = 1;
		
		@(posedge i_clk);
		i_dime = 0;
		i_quarter = 1;
		
		@(posedge i_clk);
		i_quarter = 0;
		

		// Wait and observe outputs
		#120
		// Finish simulation after some time
		#50 $stop;
	end
endmodule: milestone1_tb

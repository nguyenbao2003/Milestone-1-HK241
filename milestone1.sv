module milestone1(
	input logic 			i_clk,
	input logic 			i_nickle,
	input logic 			i_dime,
	input logic 			i_quarter,
	output logic 			o_soda,
	output logic [2:0] 	o_change
);
	
	
	parameter S0 = 2'b00;
	parameter S5 = 2'b01;
	parameter S10 = 2'b10;
	parameter S15 = 2'b11;
	
	logic [1:0] state = S0;
	logic [1:0] next_state;
	logic [2:0] pre_o_change;
	logic 		pre_o_soda;
	
	// next state logic
	always_comb begin
		case (state)
			S0: begin
				if (i_nickle) begin
					next_state = S5;
					pre_o_change = 3'b000;
					pre_o_soda = 1'b0;
				end else if (i_dime) begin 
					next_state = S10;
					pre_o_change = 3'b000;
					pre_o_soda = 1'b0;
				end else if (i_quarter) begin
					next_state = S0;
					pre_o_change = 3'b001; // change = 5
					pre_o_soda = 1'b0;
				end else begin 
					next_state = state;
					pre_o_change = 3'b000;
					pre_o_soda = 1'b0;
				end 
			end
			
			S5: begin
				if (i_nickle) begin 
					next_state = S10;
					pre_o_change = 3'b000;
					pre_o_soda = 1'b0;
				end else if (i_dime) begin 
					next_state = S15;
					pre_o_change = 3'b000;
					pre_o_soda = 1'b0;
				end else if (i_quarter) begin
					next_state = S0;
					pre_o_change = 3'b010; // change = 10
					pre_o_soda = 1'b1;
				end else begin 
					next_state = state;
					pre_o_change = 3'b000;
					pre_o_soda = 1'b0;
				end
			end
			
			S10: begin
				if (i_nickle) begin 
					next_state = S15;
					pre_o_change = 3'b000;
					pre_o_soda = 1'b0;
				end else if (i_dime) begin 
					next_state = S0;
					pre_o_change = 3'b000;
					pre_o_soda = 1'b1;
				end else if (i_quarter) begin
					next_state = S0;
					pre_o_change = 3'b011; // change = 15
					pre_o_soda = 1'b1;
				end else begin 
					next_state = state;
					pre_o_change = 3'b000;
					pre_o_soda = 1'b0;
				end
			end
			
			S15: begin
				if (i_nickle) begin 
					next_state = S0;
					pre_o_change = 3'b000;
					pre_o_soda = 1'b1;
				end else if (i_dime) begin
					next_state = S0;
					pre_o_change = 3'b001; // change = 5
					pre_o_soda = 1'b1;
				end else if (i_quarter) begin
					next_state = S0;
					pre_o_change = 3'b100; // change = 20
					pre_o_soda = 1'b1;
				end else begin 
					next_state = state;
					pre_o_change = 3'b000;
					pre_o_soda = 1'b0;
				end	
			end
		endcase
	end
	
	// current state logic
	always_ff @(posedge i_clk) begin
			state <= next_state;
			o_change <= pre_o_change;
			o_soda <= pre_o_soda;
		end

endmodule: milestone1
		
		
		
		
		
	

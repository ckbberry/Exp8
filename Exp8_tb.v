`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:36:45 10/16/2015
// Design Name:   Exp8
// Module Name:   C:/Users/Christian/Documents/EE2731/Exp8/Exp8_tb.v
// Project Name:  Exp8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Exp8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Exp8_tb;

	// Inputs
	reg w;
	reg x;
	reg Clk;

	// Outputs
	wire y;
	wire z;

	// Instantiate the Unit Under Test (UUT)
	Exp8 uut (
		.w(w), 
		.x(x), 
		.y(y), 
		.z(z), 
		.Clk(Clk)
	);


   // Note: CLK must be defined as a reg when using this method
   
   parameter PERIOD = 10;

   always begin
      Clk = 1'b0;
      #(PERIOD/2) Clk = 1'b1;
      #(PERIOD/2);
   end  
	

	initial begin
		// Initialize Inputs
		w = 0;
		x = 0;

		// Wait 10 ns for global reset to finish
		#10;
        
		// Add stimulus here
		//Do nothing
		w = 0;
		x = 0;
		#10;
// 5 cents
		w = 0;
		x = 1;
		#10;
//10 cents, dispense		
		w = 1;
		x = 0;
		#10;
		
		w = 0;
		x = 0;
		#10;
		
		w = 1;
		x = 0;
		#10;
		
		w = 0;
		x = 1;
		#10;
		
		w = 0;
		x = 0;// dispense
		#10;
		
		w = 1;
		x = 1;//10cents change
		#10;
		
		w = 0;
		x = 0;//dispense
		#10;
		
		w = 0;
		x = 0;
		#10;
		
		w = 1;
		x = 0;
		#10;
		
		w = 1;
		x = 1;
		#10;
		
		w = 0;
		x = 0;
		#10;

	end
      
endmodule


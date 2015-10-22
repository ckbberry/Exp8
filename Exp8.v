`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:30:26 10/16/2015 
// Design Name: 
// Module Name:    Exp8 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Exp8(w , x , y , z , Clk);
// Parameters
   parameter A = 3'b000;
   parameter B = 3'b001;
   parameter C = 3'b010;
   parameter D = 3'b011;
   parameter E = 3'b100;
   parameter F = 3'b101;
   parameter G = 3'b110;
   parameter H = 3'b111;

//Inputs
	input w;
	input x;
	input Clk;
//Outputs
	output reg y;
	output reg  z;
//Registers
	reg [2:0] state;
	
//Behavior

	always@(posedge Clk)
         (* PARALLEL_CASE, FULL_CASE *) case (state)
            A : begin
               if (~w&~x)
                  state <= A;
               else if (~w&x)
                  state <= B;
					else if (w&~x)
                  state <= C;
               else
                  state <= D;
               y <= 1;
					z <= 1;
            end
            B : begin
               if (~w&~x)
                  state <= B;
               else if (~w&x)
                  state <= C;
					else if (w&~x)
                  state <= H;
               else
                  state <= E;
               y <= 1;
					z <= 1;
            end
            C : begin
               if (~w&~x)
                  state <= C;
               else if (~w&x)
                  state <= H;
					else if (w&~x)
                  state <= G;
               else
                  state <= F;
               y <= 1;
					z <= 1;
            end
            D : begin
               state <= H;
               y <= 1;
					z <= 0;
            end
            E : begin
               state <= H;
               y <= 0;
					z <= 1;
            end
            F : begin
               state <= D;
               y <= 1;
					z <= 0;
            end
            G : begin
               state <= H;
               y <= 0;
					z <= 1;
            end
            H : begin
               state <= A;
               y <= 0;
					z <= 0;
            end
            default : begin  // Fault Recovery
               state <= A;
               y <= 1;
					z <= 1;
            end   
         endcase
	
	
	
	
endmodule

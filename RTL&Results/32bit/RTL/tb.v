
`timescale 1ns/10ps
//------------------------------------------------------------------------------------------
module tb;


parameter weight = 32 ;
parameter N = 6;
	// Inputs
	reg [weight:1] a_in,b_in,g_in;
	reg clk;
	reg rst;
	reg ctr;

	// Outputs
	wire [1:weight] p_out;

  reg [weight*N - 1 : 0]   a;
  reg [weight*N - 1 : 0]   b;           
  reg [weight*N - 1 : 0]   g; 
	// Inputs
	
                    
	// Instantiate the Unit Under Test
	topcell mul(
      .clk(clk),
      .ctr(ctr),
      .rst(rst),
      .ai(a_in),
      .gi(g_in),
      .bi(b_in),
     
      .po(p_out));

	initial 
	  begin
		// Initialize Inputs
		a_in = 0;
		b_in = 0;
		g_in = 0;
		clk = 0;
		rst = 0;
		ctr = 0;

    
		
	a = 192'b00000000_00000000_00000000_00000000_00100000_00000000_00100000_00000000_11000000_00100000_00001000_00000001_00000000_00000000_00000000_00000000_00000000_01010100_00000010_01000000_10100000_00000000_00000000_00000000;
	b = 192'b00000000_00000000_00000000_00000010_11000000_00000000_00000000_00010000_00001000_11000000_00000000_00000000_00000010_00000000_01000000_00001000_10000000_00000000_00000000_00001000_00000000_10000000_00100000_10001101;
	g = 192'b00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00011001_00100000_00000000_00000000_00000000;

		
		// Wait 40 ns for global reset to finish
		#40;//1
		    
		// Add stimulus here
		rst =1'b1;		

		ctr = 1'b0;
		b_in=b[(N-0)*weight - 1:(N-1)*weight];
		g_in=32'b0;	
		a_in =32'b0;				
		
		#10 //2
		ctr = 1'b1;
		b_in = b[(N-1)*weight - 1:(N-2)*weight];
		g_in = g[(N-0)*weight - 1:(N-1)*weight];
		a_in = a[(N-0)*weight - 1:(N-1)*weight];
		
		#10 //3
		b_in = b[(N-2)*weight - 1:(N-3)*weight];
		g_in = g[(N-1)*weight - 1:(N-2)*weight];
		a_in = a[(N-1)*weight - 1:(N-2)*weight];
		
		#10 //4
		b_in = b[(N-3)*weight - 1:(N-4)*weight];
		g_in = g[(N-2)*weight - 1:(N-3)*weight];
		a_in = a[(N-2)*weight - 1:(N-3)*weight];
		
		#10 //5
		b_in = b[(N-4)*weight - 1:(N-5)*weight];
		g_in = g[(N-3)*weight - 1:(N-4)*weight];
		a_in = a[(N-3)*weight - 1:(N-4)*weight];
		
		#10 //6
		b_in = b[(N-5)*weight - 1:(N-6)*weight];
		g_in = g[(N-4)*weight - 1:(N-5)*weight];
		a_in = a[(N-4)*weight - 1:(N-5)*weight];
		
		#10 //7
		b_in = 32'b0;
		g_in = g[(N-5)*weight - 1:(N-6)*weight];
		a_in = a[(N-5)*weight - 1:(N-6)*weight];
		
	
		
		
		#10 //23
		b_in = 32'b0;
		g_in = 32'b0;
		a_in = 32'b0;
		
		#800 $stop;
		
	  end
	
	always #5 clk = ~clk;

endmodule

`timescale 1ns/10ps

module tb;


parameter weight = 8 ;
parameter N = 21;
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


		
	a = 168'b00000000_00000000_00000000_00000000_00100000_00000000_00100000_00000000_11000000_00100000_00001000_00000001_00000000_00000000_00000000_00000000_00000000_01010100_00000010_01000000_10100000;
	b = 168'b00000010_11000000_00000000_00000000_00010000_00001000_11000000_00000000_00000000_00000010_00000000_01000000_00001000_10000000_00000000_00000000_00001000_00000000_10000000_00100000_10001101;
	g = 168'b00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00011001_00100000;

		
		// Wait 40 ns for global reset to finish
		#40;//1
		    
		// Add stimulus here
		rst =1'b1;		

		ctr = 1'b0;
		b_in=b[(N-0)*weight - 1:(N-1)*weight];
		g_in=8'b0;	
		a_in =8'b0;				
		
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
		b_in = b[(N-6)*weight - 1:(N-7)*weight];
		g_in = g[(N-5)*weight - 1:(N-6)*weight];
		a_in = a[(N-5)*weight - 1:(N-6)*weight];
		
		#10 //7
		b_in = b[(N-7)*weight - 1:(N-8)*weight];
		g_in = g[(N-6)*weight - 1:(N-7)*weight];
		a_in = a[(N-6)*weight - 1:(N-7)*weight];
		
		#10 //7
		b_in = b[(N-8)*weight - 1:(N-9)*weight];
		g_in = g[(N-7)*weight - 1:(N-8)*weight];
		a_in = a[(N-7)*weight - 1:(N-8)*weight];
		
		#10 //7
		b_in = b[(N-9)*weight - 1:(N-10)*weight];
		g_in = g[(N-8)*weight - 1:(N-9)*weight];
		a_in = a[(N-8)*weight - 1:(N-9)*weight];
		
		#10 //7
		b_in = b[(N-10)*weight - 1:(N-11)*weight];
		g_in = g[(N-9)*weight - 1:(N-10)*weight];
		a_in = a[(N-9)*weight - 1:(N-10)*weight];
		
		#10 //7
		b_in = b[(N-11)*weight - 1:(N-12)*weight];
		g_in = g[(N-10)*weight - 1:(N-11)*weight];
		a_in = a[(N-10)*weight - 1:(N-11)*weight];
		
		#10 //7
		b_in = b[(N-12)*weight - 1:(N-13)*weight];
		g_in = g[(N-11)*weight - 1:(N-12)*weight];
		a_in = a[(N-11)*weight - 1:(N-12)*weight];
		
		#10 //7
		b_in = b[(N-13)*weight - 1:(N-14)*weight];
		g_in = g[(N-12)*weight - 1:(N-13)*weight];
		a_in = a[(N-12)*weight - 1:(N-13)*weight];
		
		#10 //7
		b_in = b[(N-14)*weight - 1:(N-15)*weight];
		g_in = g[(N-13)*weight - 1:(N-14)*weight];
		a_in = a[(N-13)*weight - 1:(N-14)*weight];
		
		#10 //7
		b_in = b[(N-15)*weight - 1:(N-16)*weight];
		g_in = g[(N-14)*weight - 1:(N-15)*weight];
		a_in = a[(N-14)*weight - 1:(N-15)*weight];
		
	    #10 //7
		b_in = b[(N-16)*weight - 1:(N-17)*weight];
		g_in = g[(N-15)*weight - 1:(N-16)*weight];
		a_in = a[(N-15)*weight - 1:(N-16)*weight];
		
		#10 //7
		b_in = b[(N-17)*weight - 1:(N-18)*weight];
		g_in = g[(N-16)*weight - 1:(N-17)*weight];
		a_in = a[(N-16)*weight - 1:(N-17)*weight];
		
		#10 //7
		b_in = b[(N-18)*weight - 1:(N-19)*weight];
		g_in = g[(N-17)*weight - 1:(N-18)*weight];
		a_in = a[(N-17)*weight - 1:(N-18)*weight];
		
		#10 //7
		b_in = b[(N-19)*weight - 1:(N-20)*weight];
		g_in = g[(N-18)*weight - 1:(N-19)*weight];
		a_in = a[(N-18)*weight - 1:(N-19)*weight];
		
		#10 //7
		b_in = b[(N-20)*weight - 1:(N-21)*weight];
		g_in = g[(N-19)*weight - 1:(N-20)*weight];
		a_in = a[(N-19)*weight - 1:(N-20)*weight];
		
		#10 //7
		b_in = 8'b0;
		g_in = g[(N-20)*weight - 1:(N-21)*weight];
		a_in = a[(N-20)*weight - 1:(N-21)*weight];
		
		
		
		
		#10 //23
		b_in = 8'b0;
		g_in = 8'b0;
		a_in = 8'b0;
		
		#800 $stop;
		
	  end
	
	always #5 clk = ~clk;

endmodule
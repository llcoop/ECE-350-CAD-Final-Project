`timescale 1ns / 1ns  
/*  
    Dan Browne & Logan Cooper
    ECE 350/450 - Computer Aided Design
    Final Project Testbench
    Design a self-adaptive Decision Feedback Equalizer (DFE) or (IIR filter)
*/ 
 module Final_Proj_Testbench;  
      // Inputs  
      reg clock, reset, status, data_en;    
      reg [7:0] i_rdata, i_traindata;    
      // Outputs  
      wire flag;  
      wire [8:0] o_ry;
      
      // Instantiate the Unit Under Test (UUT)  
      DFE uut(  
           .clock(clock),  
           .reset(reset),
           .status(status),
           .data_en(data_en),
           .i_rdata(i_rdata),    
           .i_traindata(i_traindata),
           .flag(flag),
           .o_ry(o_ry) 
      );

      initial begin   
            clock = 0;  
            forever #10 clock = ~clock;  
      end  
      
      initial begin
        i_traindata = 8'd01;
        status = 1'd0;
        i_rdata = 8'd0;
        #90;
        forever #20 i_traindata = i_traindata + 8'd1;
      end
    //create a dumpfile
    initial begin
        $monitor($stime,,i_rdata,,i_traindata,,clock,,reset,,,o_ry);
        $dumpfile("Final_Project.dump");
        $dumpvars(0,uut);
    end
    initial begin
        reset=0;  
        // Wait 100 ns for global reset to finish
        #100;  
        reset=1;

        #500;  
        $finish;  
    end
 endmodule 
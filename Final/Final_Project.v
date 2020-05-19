`timescale 1ns / 1ns  
/*  
    Dan Browne & Logan Cooper
    ECE 350/450 - Computer Aided Design
    Final Project 
    Design a self-adaptive Decision Feedback Equalizer (DFE) or (IIR filter)
*/ 



module mult(data, coef, product); //17 + 8 needed
    //input [7:0] data;
    //input [11:0] coef;
    //output [7:0] product;
    input signed [7:0] data;
    input signed [11:0] coef;
    output signed [7:0] product;
    
    assign product = data * coef;
    //assign product = data;
    //multiply coef * data
endmodule

module sum(delay, multout, feedback, out);
    input [7:0] delay;
    input [7:0] multout;
    input [7:0] feedback;
    output [7:0] out;

    //assign out = delay;
    assign out =  delay + multout + feedback;
endmodule

module DFE(clock, reset, status, data_en, i_rdata, i_traindata, flag, o_ry);
    input clock, reset, status, data_en;      
    input [7:0] i_rdata;                 // raw data: 1 sign bit + 2 integer bits + 5 fraction bits
    input [7:0] i_traindata;             // training data to feed in; same format as raw data
    
    output reg flag;                     // indicator for trianing/testing
    output [8:0] o_ry;               // output data: 1 sign bit + 2 integer bits + 6 fraction bits

    reg [11:0] weights;                  // weights for the system: carry forward flag + carry back flag + 10 data bits
    reg [11:0] deltaf, deltab;           // delta weights for interface; we can set this to be whatever we want 
    
    // Temporary registers
    reg [7:0] R1 [16:0];    // feedforward delay
    reg [7:0] R2 [7:0];     // feedback delay
    reg [8:0] R3 [2:0];     // errors 
    reg [7:0] R4 [16:0];    // input pipeline
    
    // Coefficiencs updated with delta weights 
    reg [11:0] cb [7:0];           // Coefficients for the fbe
    reg [11:0] cf [16:0];          // Coefficients for ffe 

    wire [7:0] R1_in [16:0];
    wire [7:0] add_in [15:0];
    wire [7:0] fb_out [7:0];
    
    integer i;

    wire [7:0] inselect;
    assign inselect = (status) ? i_rdata : i_traindata;

    assign o_ry = R1[16];

    //architecture pipeline
    //17 CF Multipliers
    mult mult0(inselect, cf[0], R1_in[0]);
    mult mult1(inselect, cf[1], add_in[0]);
    mult mult2(inselect, cf[2], add_in[1]);
    mult mult3(inselect, cf[3], add_in[2]);
    mult mult4(inselect, cf[4], add_in[3]);
    mult mult5(inselect, cf[5], add_in[4]);
    mult mult6(inselect, cf[6], add_in[5]);
    mult mult7(inselect, cf[7], add_in[6]);
    mult mult8(inselect, cf[8], add_in[7]);
    mult mult9(inselect, cf[9], add_in[8]);
    mult mult10(inselect, cf[10], add_in[9]);
    mult mult11(inselect, cf[11], add_in[10]);
    mult mult12(inselect, cf[12], add_in[11]);
    mult mult13(inselect, cf[13], add_in[12]);
    mult mult14(inselect, cf[14], add_in[13]);
    mult mult15(inselect, cf[15], add_in[14]);
    mult mult16(inselect, cf[16], add_in[15]);

    //8 CB Multipliers
    mult bmult0(R2[0], cb[0], fb_out[0]);
    mult bmult1(R2[1], cb[1], fb_out[1]);
    mult bmult2(R2[2], cb[2], fb_out[2]);
    mult bmult3(R2[3], cb[3], fb_out[3]);
    mult bmult4(R2[4], cb[4], fb_out[4]);
    mult bmult5(R2[5], cb[5], fb_out[5]);
    mult bmult6(R2[6], cb[6], fb_out[6]);
    mult bmult7(R2[7], cb[7], fb_out[7]);

    //16 Adders
    sum sum0(R1[0], add_in[0], 8'd0, R1_in[1]);
    sum sum1(R1[1], add_in[1], 8'd0, R1_in[2]);
    sum sum2(R1[2], add_in[2], 8'd0, R1_in[3]);
    sum sum3(R1[3], add_in[3], 8'd0, R1_in[4]);
    sum sum4(R1[4], add_in[4], 8'd0, R1_in[5]);
    sum sum5(R1[5], add_in[5], 8'd0, R1_in[6]);
    sum sum6(R1[6], add_in[6], 8'd0, R1_in[7]);
    sum sum7(R1[7], add_in[7], 8'd0, R1_in[8]);
    sum sum8(R1[8], add_in[8], fb_out[0], R1_in[9]);
    sum sum9(R1[9], add_in[9], fb_out[1], R1_in[10]);
    sum sum10(R1[10], add_in[10], fb_out[2], R1_in[11]);
    sum sum11(R1[11], add_in[11], fb_out[3], R1_in[12]);
    sum sum12(R1[12], add_in[12], fb_out[4], R1_in[13]);
    sum sum13(R1[13], add_in[13], fb_out[5], R1_in[14]);
    sum sum14(R1[14], add_in[14], fb_out[6], R1_in[15]);
    sum sum15(R1[15], add_in[15], fb_out[7], R1_in[16]);

    always @ (negedge clock or negedge reset) begin
        if (~reset) begin //reset the system
           weights <= 12'd0;
           deltaf <= 12'd0;
           deltab <= 12'd0;
           flag <= 1'd0;
           for (i=0; i < 17; i=i+1) begin //reset arrays
                if (i < 8)
                    R2[i] <= 8'd0;
                    cb[i] <= 8'd1;
                R1[i] <= 8'd0;
                cf[i] <= 8'd2;
           end
        end
        else begin
            for (i=0; i < 17; i=i+1)
                R1[i] <= R1_in[i]; //reset array
        end
    end
endmodule

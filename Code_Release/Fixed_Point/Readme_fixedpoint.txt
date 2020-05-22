Focus on how to convert the floating point to fix point, with proper bits for input/output/err/filter output/weights etc.
Note the goal is to gurantee that the Bit Error Rate 10^(-3) when SNR=12db.

Line 1-57: generate the distored input x, it does not require the implementation, just to generate the stimulus. In your verilog testbench, you 
can easily use the pre-defined txt files from a.mat/b.mat in Floating_code_DFE_DLMS (Directory) to replace that.

Line 58 to end: key function for DFE to correct the distorted signal x, with error reported. (You need to implement this part in verilog)
****Main program starts with maindlms.m, a1.mat/b1.mat is the provided data for input/training signal, resetequ_lms.m is the initialization of the filters, 
equ_dlms is the main function of adaptive filter (decision feedback equalizer).

******Note after running the code, the generated equl_data.mat can help you to degug and understand the function of equ_dlms.

*******We implemented the delayed sign LMS algorithm, with the transposed filter structure to improve the throughput. 
You need to write the verilog code to realize this key function equ_dlms.

****Use the "x" in a1.mat and "trainsig" in b1.mat to generate the input data for your testbench in RTL design, 
so that the fixed point matlab and RTL design have the same input, paramters, and we can perform bit-bit exact match.
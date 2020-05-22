%by Wujie Wen
global M N1 N2 N3 step cf cb % global variable

M=8; 
N1=2*M+1;        %number of taps for feedforward   
N2=8;            %number of taps for feedback
N3=2*M;          %number registers of Transposed filter for delay added
step=1/1024;     %stepsize

cf=[zeros(1,M) 1 zeros(1,M)]; %initial coefficients for ffe
cb=zeros(1,N2);               %initial coefficients for fbe
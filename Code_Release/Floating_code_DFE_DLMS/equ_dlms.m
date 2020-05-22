%function equ_dlms 
%input:signal from rake trainsig     
%output:out for soft decision
%%%Check your saved equl_data for debugging purpose, as it records all data
function out=equ_dlms(rec_sig,trainsig)
global M N1 N2 N3 step cf cb

x=rec_sig;               %Load the real-time testing data to be processed by adaptive filter
d=trainsig(1:1000);      %Load the initial 1000 bits training data to train the weights of adaptive filter
N=length(x);
K=length(d);

y=zeros(1,N);
z=0;


a=zeros(1,N3);    %store the ffe product--input multiply ffe weight
b=zeros(1,N3);    %for fbe product--decision output multiply fbe weight
vect1=zeros(1,N1);
vect2=zeros(1,N2);
reg1=zeros(1,N1);
reg4=zeros(1,N1);
reg2=zeros(1,N2);
reg3=[0 0];
e=zeros(1,N); %record the errors for each iteration
deltwa1=zeros(1,N1); %delta w for ffe weight update
deltwa2=zeros(1,N2); %delta w for fbe weight update
u=zeros(N,N1);
v=zeros(N,N2);
z1=[0 0 0];
out=zeros(1,N);
t1=zeros(N,N1);
t2=zeros(N,N2);

%Transposed structre is adopted for adpative filter for better througput 
for i=1:N
    reg1=reg4;   %delay the feedforward input
    if i<=M+1
        reg2=zeros(1,N2);
    else 
        reg2=[z1(2) reg2(1:N2-1)];
    end    
    vect1=x(i)*cf;
    t1(i,:)=vect1;
    vect2=z*cb;
    t2(i,:)=vect2;
    if(N1-N2>=2)
        a=b+[vect1(2:N1-N2) vect1(N1-N2+1:N1)+vect2(1:N2)];     % taps N1-N2>=2
        b=[vect1(1) a(1:N3-1)];                                 % delayed add for transposed structure.
    elseif(N1-N2==0)                                               %taps N1-N2=0
        a=b+vect1(2:N1)+vect2(2:N2);
        b=[vect1(1)+vect2(1) a(1:N3-1)];
    elseif(N1-N2==1)
        a=b+vect1(N1-N2+1:N1)+vect2(1:N2);
        b=[vect1(1) a(1:N3-1)];
    end
        
    
    if i<M+1
        z=0;
        e(i)=0;
    elseif (i>=M+1&i<K+M+1) % traning mode, d is the traning data, note the delay of the first output from the filter is M clock cycles
        z=d(i-M);
        e(i)=z-a(N3);
    else                  % inference or testing mode
        z=sign(a(N3));    % hard decision
        e(i)=z-a(N3);
    end
    y(i)=z;
    out(i)=a(N3);
    z1=[z z1(1) z1(2)];
    deltwa1=(reg3(1))*reg1*step;
    deltwa2=(reg3(1))*reg2*step;

    %deltwa1=0;                   %deltwa1/delta2 do not update,
    %deltwa2=0;
    cf=cf+fliplr(deltwa1);        %%coefficients update needs delay  
    cb=cb+fliplr(deltwa2);
    %cf=cf+deltwa1;        %%coefficients update needs delay  
    %cb=cb+deltwa2;
    u(i,:)=cf;
    v(i,:)=cb;
    reg3=[e(i) reg3(1)]; %delay the error by one clock cycle
    reg4=[x(i) reg1(1:N1-1)]; % delay the input line by one clock cycle
 
 %   disp(a(N3));
end
errs = sum(y(K+M+1:N)~=trainsig(K+1:N-8)); %check the error bits after equalization should be ~0
save equl_data;
%% conv(fliplr(cf),chan) and fliplr(cb)
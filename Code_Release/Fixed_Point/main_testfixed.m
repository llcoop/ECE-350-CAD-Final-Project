%main_test for DFE algorithm fixed_point
%by 
%input x(1 2 5) 8bits, 1 sign + 2 inter bits + 5 fraction bits
%output(1 2 6) 
% the weights bit 12 bits, cf,cb(1 1 10), 
%Regardless of your fix point setting, make sure the final results BER=1-2x10^(-3) at SNR=12db (the Performance Requirement)
clear;
clc;

%generatre input signal by PN sequence
pntaps=[0 0 1 0 0 0 0 0 0 1];  %x^10+x^3+1
N2=length(pntaps);
pninitial=[zeros(1,9) 1];
k1=200;
pndata=zeros(1,(2^N2-1)*k1);
pnregister=pninitial;
n=0;
kk=0;
while kk<=k1-1
    n=n+1;
    pndata(n)=pnregister(N2);
    feedback=rem((pnregister*pntaps'),2);
    pnregister=[feedback,pnregister(1:N2-1)];
    if pnregister==pninitial
        kk=kk+1;
    end
end

%modulation of BPSK
msg=1-2*pndata;
M=2; 
N=length(msg);

%different channel for test
chIdeal = [1 0 0 0 0 0 0 0];
ch1 = [-0.2207	 -0.5931   -0.2559	  0.6888    0.2322    0.0636    0.0386   -0.0101];


chan=ch1;     %select the channel for test
chan=chan/sqrt(chan*chan');
chan=double(int16(floor(chan*2^9)))/2^9;
filtmsg=conv(msg,chan); % Introduce channel distortion;
filtmsg=double(int16(floor(filtmsg*2^9)))/2^9;
sigPower = sum(abs(filtmsg).^2)/length(filtmsg);
sigma=sqrt(2)*91/2^9;           
noisy=sigma*(randn(1,length(filtmsg)));
noisyPower=sigma^2;
snr=sigPower/noisyPower;
SNR_db=10*log10(snr)

noisy=double(int16(floor(noisy*2^9)))/2^9;
x1=filtmsg+noisy;           %%noise added
chref = find(abs(chan)==max(abs(chan)),1,'first');


x1=double(int8(floor(x1*2^5)))/2^5; %input signal X of DFE-- fixed point signed 8bit (1,2,5), 1 sign bit, 2 integer bits, 5 fraction bits
x=x1(chref:N+chref-1);

%Transposed_DLMS_DFE in different channels, the main code starts from here.
d=msg(1:1000);
y=zeros(1,N);
%z1=[0 0];
z=0;
step=2^(-10);
cf1=[0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0];
cb1=zeros(1,8);
cf=[0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0];
cb=zeros(1,8);
a=zeros(1,16);   %for ffe product
b=zeros(1,16);    %for fbe product
vect1=zeros(1,17);
vect2=zeros(1,8);
reg1=zeros(1,17);
reg2=zeros(1,8);
reg3=[0 0];
e=zeros(1,N);
deltwa1=0;
deltwa2=0;
u=zeros(N,17);
v=zeros(N,8);
reg4=zeros(1,17);
z1=[0 0 0];
out=zeros(1,N);
t1=zeros(N,17);
t2=zeros(N,16);
t3=zeros(N,8);

for i=1:N
    reg1=reg4;
    if i<=9
        reg2=zeros(1,8);
    else 
        reg2=[z1(2) reg2(1:7)];
    end 
    %vect1=x(i)*cf1;
    vect1=double(int16(floor(x(i)*cf*2^10)))/2^10; % weight bits 12 (1,1,10), 
    t1(i,:)=vect1;
    vect2=double(int16(floor(z*cb*2^10)))/2^10;
    %vect2=z*cb1;
    t3(i,:)=vect2;
    a=b+[vect1(2:9) vect1(10:17)+vect2(1:8)];
    a=double(int16(floor(a*2^10)))/2^10;
    b=[vect1(1) a(1:15)];
    b=double(int16(floor(b*2^10)))/2^10;
    t2(i,:)=a;
    if i<9
        z=0;
        e(i)=0;
    elseif (i>=9&&i<(length(d)+9))    %training mode
        z=d(i-8);
        e(i)=z-a(16);
    else                              %inference (testing) mode
        z=sign(a(16));
        e(i)=z-a(16);
    end
    e(i)=double(int16(floor(e(i)*2^6)))/2^6; % error 9 bits (1,2,6)
    y(i)=z;
    out(i)=double(int16(floor(a(16)*2^6)))/2^6;
    z1=[z z1(1) z1(2)];
    deltwa1=double(int32(floor(sign(reg3(1))*reg1*step*2^15)))/2^15; %accumulation deltaw 18 (1, 2, 15)
    deltwa2=double(int32(floor(sign(reg3(1))*reg2*step*2^15)))/2^15;
    cf1=double(int32(floor((cf1+fliplr(deltwa1))*2^15)))/2^15;               % (18(1 2 15))
    cb1=double(int32(floor((cb1+fliplr(deltwa2))*2^15)))/2^15;
    cf=double(int16(floor(cf1*2^10)))/2^10;                                  %(trunc to weights 12(1 1 10))
    cb=double(int16(floor(cb1*2^10)))/2^10;
    u(i,:)=cf;
    v(i,:)=cb;
    reg3=[e(i) reg3(1)];
    reg4=[x(i) reg1(1:16)];
end


%statistic of errs and Bit Error Rate (BER)
qq=y((length(d)+9):N)-msg((length(d)+1):N-8);
for i=1009:N
    if (y(i)==0)
        y(i)=1;
    end
end
errs = sum(y((length(d)+9):N)~=msg((length(d)+1):N-8))
BER=errs/(N-length(d)) %BER=1E-3 will satisfy the requirement
%% conv(fliplr(cf),chan) and fliplr(cb)
    
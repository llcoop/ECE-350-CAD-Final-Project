%by Wujie Wen
clc;
clear;
load a1.mat;           %load distorted input x for equalizer
load b1.mat;           %load trainsig
resetequ_lms;          %initial the DFE 
Outsig=equ_dlms(x,msg); %function of DFE
load('equl_data.mat'); % for debug purpose, check the err/weight convergenece 

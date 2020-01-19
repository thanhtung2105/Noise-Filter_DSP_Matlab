clear all;
clc;
% f cutoff = 500Hz (dai thong)
% f cutoff = 600Hz (stop band)
% toc do lay mau 2000Hz
% Do suy giam dai chan 40dB
% Do map mo dai thong it hon 3dB  

rp=3;
rs=40;
fs=2000;
f=[500 600];
a=[1 0];

dev=[(10^(rp/20)-1)/(10^(rp/20)+1) 10^(-rs/20)];
[n,fo,ao,w]=firpmord(f,a,dev,fs);

b=firpm(n,fo,ao,w);
freqz(b,1,1024,fs);
title('Thiet ke loc thap qua FIR');
fvtool(b,a)
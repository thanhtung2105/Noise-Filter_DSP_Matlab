rp = 0.1;
rs = 35;
fs = 12000;
f = [1800 2000];
a = [1 0];
dev = [(10^(rp/20)-1)/(10^(rp/20)+1) 10^(-rs/20)];
[n,fo,ao,w] = firpmord(f,a,dev,fs)
b = firpm(n,fo,ao,w);
freqz(b,1,1024,fs);
title('thiet ke loc thap qua FIR');

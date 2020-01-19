
fs = 8000;
f = [1500 2000];
a = [1 0];

dev = [0.01 0.1];
[n,fo,ao,w] = firpmord(f,a,dev,fs)

b = firpm(n,fo,ao,w);
freqz(b,1,1024,fs);
title('Thi?t k? l?c th?p qua FIR');
fvtool(b,a)
feature('DefaultCharacterSet', 'UTF-8')
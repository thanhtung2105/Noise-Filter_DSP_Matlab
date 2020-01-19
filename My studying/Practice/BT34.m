%Hamming
rp = 0.25;
rs = 50;
f = [0.2 0.3];
a = [1 0];
dev = [(10^(rp/20)-1)/(10^(rp/20)+1) 10^(-rs/20)];
[n,fo,ao,w] = firpmord(f,a,dev);
b = firpm(n,fo,ao,w);
n=length(b);
b = b.*hamming(n)';
fvtool(b,1)
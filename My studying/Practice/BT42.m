Wp=500/2000;
Ws=1000/2000;
Rp=1;
Rs=40;
Fs=2000;
[n,Wn]=cheb2ord(Wp,Ws,Rp,Rs);
[b,a]=cheby2(n,Rs,Wn);
[h,omega]=freqz(b,a,256);   
subplot(1,2,1);   
plot(omega/pi,20*log10(abs(h)));
grid;   
xlabel('\omega/\pi');
ylabel('Bien do, dB');   
title('Mach loc chebyshev2')
Wp=500/2000;
Ws=1000/2000;
Rp=1;
Rs=40;
Fs=2000;
[n,Wn] = buttord(Wp,Ws,Rp,Rs);
[b,a] = butter(n,Wn);
[h,omega]=freqz(b,a,256);   
subplot(1,2,2);   
plot(omega/pi,20*log10(abs(h)));
grid;   
xlabel('\omega/\pi');
ylabel('Bien do, dB');   
title('Mach loc butter')
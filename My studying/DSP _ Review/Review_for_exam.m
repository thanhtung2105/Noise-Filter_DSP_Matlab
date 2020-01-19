Wp=800/2000; Ws=1000/2000;
[n,Wn]=buttord(Wp,Ws,0.5,40)

[b,a]=butter(n,Wn);
[h,omega]=freqz(b,a,256);
subplot(1,2,1);
plot(omega/pi,20*log10(abs(h)));
grid on;
xlabel('\omega/\pi');ylabel('Bien do, dB');
title('Mach loc Butterworth')

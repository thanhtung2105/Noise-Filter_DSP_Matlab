 Wp=200/500;
 Ws=300/500;
 Rp=1;
 Rs=16;
 Fs=1000;
 [n,Wn]=cheb1ord(Wp,Ws,Rp,Rs);
 [b,a]=cheby1(n,Rp,Wn);
 [h,omega]=freqz(b,a,256);   
 %subplot(1,2,1);   
 plot(omega/pi,20*log10(abs(h)));
 grid;   
 xlabel('\omega/\pi');
 ylabel('Bien do, dB');   
 title('Mach loc chebyshev1')
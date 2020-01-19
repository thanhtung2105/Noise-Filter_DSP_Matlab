 n=4;
 fs=44100;
 Wn=[8000 10000]/(fs/2);
 [b, a]=butter(n,Wn);
 fvtool(b,a)
 [h,omega]=freqz(b,a,256);   
 % subplot(1,2,1);   
 plot(omega/pi,20*log10(abs(h)));
 grid;   
 xlabel('\omega/\pi');
 ylabel('Bien do, dB');   
 title('Mach loc Butterworth')
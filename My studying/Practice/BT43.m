 n=8;
 fs=40000;
 Rp=0.5;
 Rs=50;
 Wp=300/(fs/2); %Mach loc elliptic Wp = Wn aukey ?????
 [b,a]=ellip(n,Rp,Rs,Wp);
 [h,omega]=freqz(b,a,256);   
 %subplot(1,2,1);   
 plot(omega/pi,20*log10(abs(h)));
 grid;   
 xlabel('\omega/\pi');
 ylabel('Bien do, dB');   
 title('Mach loc elliptic IIR')
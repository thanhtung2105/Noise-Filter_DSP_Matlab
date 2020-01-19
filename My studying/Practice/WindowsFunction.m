clc
clear all
% 5 functions are supported by Matlab:
% w=backman(L)
% w=hamming(L)
% w=hanning(L)
% w=chebwin(L)
% w=kaiser(L)

%Example: Using Hamming windows with width 51, frequency cutoff at 0.4
%rad/s.
b=0.4*sinc(0.4*(-25:25));
b=b.*hamming(51)';
fvtool(b,1);

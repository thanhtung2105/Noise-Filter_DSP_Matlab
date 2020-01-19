function [index,sig_quants] = DPCM(sig_comp, codebook,partition)
% Luong tu hoa DPCM voi tin hieu sig_comp sau khi nen
% bits la so bit bieu dien 1 mau
%Su dung ham du doan la y(k) = x(k-1)
predictor = [0 1];% Ham du doan delta bac 1
[index,sig_quants] = dpcmenco(sig_comp,codebook,partition,predictor);
end
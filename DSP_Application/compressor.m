function sig_comp = compressor(sig_t)
%Nen tin hieu truoc khi dua vao khoi luong tu hoá
%sig_t la tin hieu dua vao
%Su dung nen theo luat A voi he so A = 86.7
A = 87.6;
V = max(sig_t);
sig_comp = compand(sig_t,A,V,'A/compressor');
end

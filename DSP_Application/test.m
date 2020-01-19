
    [signal Srate nBits] = wavread('Record.wav');
    %Kh?o sát tín hi?u signal
    l = length(signal);
    k = mod(l,1024);            %??m b?o ?? dài c?a signal là b?i c?a 1024
    signal = signal([1:l-k],1); % Lo?i b? k ph?n t? d?
    Mp = max(signal);
    bits = 8;                   %Dùng 8 bit ?? mã hóa 1 m?u
    levels = 2^bits;            %So mau 8 bit mã hóa ???c
    step_size = (2*Mp)/levels;  %B??c nh?y cho m?i kho?ng
    codebook = [-Mp+step_size:step_size:Mp]; % S? ??i di?n cho m?i kho?ng trong ph?n partition
    partition = [-Mp+2*step_size:step_size:Mp]; %Chia tín hi?u thành 256 kho?ng

    %Chia tín hi?u thành các frame, m?i frame có ch?a 1024 m?u
    frame = reshape(signal,1024,length(signal)/1024);
    %frame là m?t ma tr?n có 1024 hàng và length(signal)/1024 c?t
    k = length(signal)/1024;

    for i = 1:k
        sig_t = frame(:,i);%Ch?n frame th? i
        sig_comp = compressor(sig_t);%Thuc hien nen
        [index,sig_quant] = DPCM(sig_comp,codebook,partition);
        sig_enc = Encoder(index);%Chuyen các ch? s? index sang chu?i s? nh? phân
    end
num2str(sig_enc, '%1d ')
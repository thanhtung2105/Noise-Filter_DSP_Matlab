disp('   BANG CHUC NANG - CAC VI DU BAI 1  ')
disp(' 1. Chon ve tin hieu xung luc don vi. ')
disp(' 2. Chon ve tin hieu bac don vi. ') 
disp(' 3. Chon ve tin hieu tao xung tuyen tinh. ')
disp(' 4. Chon ve dap ung xung. ')
disp(' 5. Chon ve dap ung xung (cach khac) - dung bang chuc nang Filter Visualization Tool. ')
disp(' 6. BT1: y(n) - 0.4y(n-1) + 0.75y(n-2) = 2x(n) +3x(n-1) +2x(n-2). ')
disp(' 7. BT2: y(n) + 0.71y(n-1) – 0,46y(n-2) – 0,62y(n-3) = 0,9x(n) - 0,45x(n-1) - 0,35x(n-2). ')
disp(' 8. BT3: y(n) = x(n) - 4x(n-1) + 3x(n-2) + 1.7y(n-1) - y(n-2). ')
disp(' 9. Tich chap cua 2 tin hieu - Ham conv. ')
disp('____________________________')
disp(' 0. Thoat ')
disp(' -1. Xoa bang. ')
while(1==1)
choice=input('Ban chon: ')
if (choice == 1)
     n = -10:20;
     y = [zeros(1,10) 1 zeros(1,20)];
     stem(n,y);
else if (choice == 2)
        n = -10:10;
        y = [zeros(1,10) ones(1,11)];
        stem(n,y);
    else if (choice == 3)
             n = (0:0.001:1)';
             y = n;
             stem(n,y);
        else if (choice == 4)
                N=40;
                num=[2.2 2.5 2];
                den = [1 -0.4 0.75];
                h=impz(num,den,N);
                stem(h);
            else if (choice == 5)
                    b=1;
                    a=[1 -0.9];
                    imp = [1;zeros(49,1)];
                    h = filter(b,a,imp);
                    fvtool(b,a);
                else if (choice == 6)
                        N= 40;
                        x = [2 3 2];
                        y = [1 -0.4 +0.75];
                        k = impz(x,y,N);
                        fvtool(x,y);
                        stem(k);
                    else if (choice == 7)
                        N = 50;
                        num = [0.9 -0.45 -0.35];
                        den = [1 0.71 -0.46 -0.62];
                        h = impz(num,den,N);
                        fvtool(num,den)
                        stem(h)
                        else if (choice == 8)
                                N = 40;
                                num = [1 -4 3];
                                den = [1 -1.7 1];
                                h = impz(num,den,N);
                                fvtool(num,den)
                                stem(h)
                            else if (choice == 9)
                                    x1 = [2., 3, 4];
                                    x2 = [3., 4, 5, 6];
                                    disp('x1 = [2., 3, 4]');
                                    disp('x2 = [3., 4, 5, 6]');
                                    disp('Ket qua tich chap la: ');
                                    conv(x1,x2)
                                else if (choice == 0)
                                        clc;
                                        disp('Buoi hoc ket thuc!')
                                        break;
                                    else if (choice == -1)
                                            clc;
                                        else
                                            disp('Chua duoc cai dat!')
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
disp('   BANG CHUC NANG - CAC VI DU BUOI BAI 1   ')
disp(' 1. Chon ve tin hieu xung luc don vi. ')
disp(' 2. Chon ve tin hieu bac don vi. ') 
disp(' 3. Chon ve tin hieu tao xung tuyen tinh. ')
disp(' 4. Chon ve dap ung xung. ')
disp(' 5. Chon ve dap ung xung (cach khac) - dung bang chuc nang Filter Visualization Tool. ')
disp(' 6. BT1: y(n) - 0.4y(n-1) + 0.75y(n-2) = 2x(n) +3x(n-1) +2x(n-2). ')
disp(' 7. BT2: y(n) + 0.71y(n-1) – 0,46y(n-2) – 0,62y(n-3) = 0,9x(n) - 0,45x(n-1) - 0,35x(n-2). ')
disp(' 8. BT3: y(n) = x(n) - 4x(n-1) + 3x(n-2) + 1.7y(n-1) - y(n-2). ')
disp(' 9. Tich chap cua 2 tin hieu - Ham conv. ')
disp('____________________________')
disp(' 0. Thoat ')
disp(' -1. Xoa bang. ')
end





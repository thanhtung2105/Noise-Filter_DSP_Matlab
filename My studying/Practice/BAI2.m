disp('   TABLE FUNCTION - EXAMBLE OF CHAPTER 2  ')
disp(' 1. Tìm ?áp ?ng t?n s? 256 ?i?m c?a m?t l?c Chepbyshev loai I b?c 12. T?n s? l?y m?u fs là 1000Hz. T?n s? c?t 200Hz. ')
disp(' 2. M?t l?c th?p qua butterworth b?c 9 v?i t?n s? c?t ? 400Hz, v?i t?n s? l?y m?u là 2000Hz. ')
disp(' 3. Bi?n ??i z c?a hàm f(n)=n^4')
disp(' 4. Tính bi?n ??i z ng??c b?ng Th?ng d? (Residuez) c?a hàm: F(z)=2z/(z-2)^-2')
disp(' 5. Phân b? c?c không. Exercise 1: V? gi?n ?? c?c không c?a hàm: H(z) = (1+2z^-1+3z^-2)/(2+4z^-1+4z^-2)')
disp(' 6. Exercise 2: V? gi?n ?? c?c không c?a hàm: H(z) = (2+5z^-1+4z^-2)/(5+45z^-1+2z^-2)')
disp('____________________________')
disp(' 0. Exit. ')
disp(' -1. Clear screen! ')
while(1==1)
choice=input('Your choice: ')
if (choice == 1)
     [b,a] = cheby1 (12,0.5,200/500);
     freqz (b,a,256,1000);
     fvtool(b,a)
else if (choice == 2)
        [b,a] = butter (9,400/1000);
        freqz(b,a,256,2000);
        fvtool(b,a)
    else if (choice == 3)
             syms n;
             f=n^4;
             ztrans(f)
        else if (choice == 4)
                syms z;
                f=2*z/(z-2)^2;
                iztrans(f)
            else if (choice == 5)
                    num = [1 2 3];
                    den = [2 4 4];
                    [z,p,k] = tf2zp(num,den);
                    zplane(num,den)
                    fvtool(num,den)
                else if (choice == 6)
                       num = [2 5 4];
                       den = [5 45 2];
                       [z,p,k] = tf2zp(num,den)
                       zplane(num,den)
                       fvtool(num,den)
                      else if (choice == 0)
                                clc;
                                disp('End Class!')
                                break;
                           else if (choice == -1)
                                    clc;
                                else
                                    disp('Not set up yet!')
                               end
                          end
                    end
                end
            end
        end
    end
end
disp('   TABLE FUNCTION - EXAMBLE OF CHAPTER 2  ')
disp(' 1. Tìm ?áp ?ng t?n s? 256 ?i?m c?a m?t l?c Chepbyshev loai I b?c 12. T?n s? l?y m?u fs là 1000Hz. T?n s? c?t 200Hz. ')
disp(' 2. M?t l?c th?p qua butterworth b?c 9 v?i t?n s? c?t ? 400Hz, v?i t?n s? l?y m?u là 2000Hz. ')
disp(' 3. Bi?n ??i z c?a hàm f(n)=n^4')
disp(' 4. Tính bi?n ??i z ng??c b?ng Th?ng d? (Residuez) c?a hàm: F(z)=2z/(z-2)^-2')
disp(' 5. Phân b? c?c không. 1. V? gi?n ?? c?c không c?a hàm: H(z) = (1+2z^-1+3z^-2)/(2+4z^-1+4z^-2)')
disp(' 6. 2. V? gi?n ?? c?c không c?a hàm: H(z) = (2+5z^-1+4z^-2)/(5+45z^-1+2z^-2)')
disp('____________________________')
disp(' 0. Exit. ')
disp(' -1. Clear screen! ')
end
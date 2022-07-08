clear
clc
do_std = xlsread('2.xlsx','sheet3','A2：Q29');
nh3_std = xlsread('2.xlsx','sheet6','A1:Q28');
cod_std = xlsread('2.xlsx','sheet7','A1:Q28');
ph = xlsread('3.xlsx','sheet1','B1:R28');
ph_std = abs(ph-7.5)/1.5;
%a1 = 0.1333;
%a2 = 0.0667;
%a3 = 0.0375;
%a由区间长度确定
a = [0.1333 0.0667 0.0375];
%o1 = 0.1757;
%o2 = 0.2197;
%o3 = 0.3048;
%o通过计算得出
o = [0.1757 0.2197 0.3048];
x = zeros(28,17);
w = zeros(3,17,28);
for i=1:28
    d = do_std(i,:);
    p = ph_std(i,:);
    n = nh3_std(i,:);
    c = cod_std(i,:);
    for j=1:17
        if d(j)<=a(1)
            w(1,i,j) = 0;
        else
            w(1,i,j) = 1-exp(-((d(j)-a(1))^2/o(1)^2));
        end
        if d(j)<=a(2)
            w(2,i,j) = 0;
        else
            w(2,i,j) = 1-exp(-((d(j)-a(2))^2/o(2)^2));
        end
        if d(j)<=a(3)
            w(3,i,j) = 0;
        else
            w(3,i,j) = 1-exp(-((d(j)-a(3))^2/o(3)^2));
        end
        x(i,j) = 0.8*(w(1,i,j)*d(j)+w(2,i,j)*c(j)+w(3,i,j)*n(j)) + 0.2*p(j);
        
    end
     
end
x





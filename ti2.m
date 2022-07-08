clear;
clc;
a = 100;
L = 110;
m = 1400;
g = 9.78;
pre = 1e-6;
epoch = 100;
w = m*g/a;
x0 = a/2;
syms x;
t = x/a;
f = a*(1+8/3*(x/a)^2-32/5*(x/a)^4+256/7*(x/a)^6)-L;
%y = net(f,x0,pre,epoch)

%T = w*a/2*sqrt(1+(a/y)^2);



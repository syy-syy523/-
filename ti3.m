x = linspace(0,2*pi,20);
y = sin(x);
p = polyfit(x,y,5);
y1 = polyval(p,x);
plot(x,y,':o',x,y1,'-*')
legend('sin(x)','fit')
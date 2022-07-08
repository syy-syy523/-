function dx = dde3de(t,x,z)
xlag = z(:,1);
r = 0.3;
b1 = 0.7;
delta = 0.3;
k = 9;
a1 = 0.2;a2 = 1;
e = 0.5;u = 0.3;
b2 = 0.4;
dx = [r*x(1)*(1-x(1)/k)-b1*x(1)*x(2)/(1+a1*x(2)) + delta*x(3);
    b1*xlag(1)*xlag(2)/(1+a1*xlag(2)) - (e+u)*x(2) - b2*x(2)/(1+a2*x(2));
    b2*xlag(2)/(1+a2*xlag(2))*(e+delta)*x(3)]
end

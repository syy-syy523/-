function dx = dde3de2(t,x,z)
%xlag = z(:,1);
dh = 1./75./52;Nh = 2.05*10^8;Nv=3.0*10^8;dv = 0.04075;bx = 30; %may be they are functions
a = 0.3*7;b1 = 0.015;b2=0.3;b3 = 0.08;
u0 =0.5;r=7./25;
u1 = 0.52;
b = 114;e = 1;
ee = x(2)>b;
dx = [dh*Nh - a*b1*x(1)*x(3)/Nh - b3*x(1)*x(2)/Nh - dh*x(1);
    a*b1*x(1)*x(3)/Nh + b3*x(1)*x(2)/Nh - (u0+r+dh)*x(2) - (u1-u0)*(2*b - 2*bx)*x(2)/(b+e*x(2)+(1-ee)*b-2*bx);
    a*b2*x(2)*(Nv-x(3))/Nh - dv*x(3)];
    
end
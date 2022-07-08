function fy = vdp(t,y)
D = 0.2;
m1 = 0.854;
m2 = 0.754;
a1 = 0.05;
a2 = 0.06;
b = 0.015;
delta = 0.4;
e = 0.8;
N = 1000;
T0 = 0.8;
fy = zeros(5,1);
fy(1) = D*(T0-y(1)) - m1*y(1)/((a1+y(1)*y(2))) - m2*y(1)/((a2+y(1)*y(2)));
fy(2) = -1*D*y(2) - b*y(2)*y(5) + m1*y(1)/((a1+y(1)*y(2)));
fy(3) = -D*y(3) + e*b*y(2)*y(5) + m2*y(1)/(((a2+y(1))*y(3)));
fy(4) = -D*y(4) - delta*y(4) + (1-e)*b*y(2)*y(5);
fy(5) = -D*y(5) - b*y(2)*y(5) -b*y(3)*y(5) + N*delta*y(4);
end

function [x,y,z] = linear(x0,y0,z0,th)
for i=1:6
    z(i) = z0(i) + th(i);
    x(i) = x0(i) + 800*cos(z(i))*t;
    y(i) = y0(i) + 800*sin(z(i))*t;
end

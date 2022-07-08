function [c,ceq] = nolinear(x)
x0 = [150 85 150 145 130 0];
y0 = [140 85 155 50 150 0];
th = [243 236 220.5 159 230 52];
for i=1:size(x)
    ceq(i) = th(i) + x(i);
end
for i=1:size(x)
    ceq(i+6) = x0(i) + 800*cos(deg2rad(ceq(i)))*x(7);
    ceq(i+12) = y0(i) + 800*sin(deg2rad(ceq(i)))*x(7);
end
for i=1:size(x)
    for j=i:size(x)
        c((i-1)*6+j) = 64 - (ceq(i+6)-ceq(j+6))^2 + (ceq(i+12)-ceq(j+12))^2;
    end
end
end

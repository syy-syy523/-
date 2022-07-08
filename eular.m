%欧拉法
function [x,y] = eular(f,x0,y0,xf,h)
n = fit(xf-x0)/h;
y(1) = y0;
x(1) = x0;
for m=1:n
    x(m+1) = x(m) + h;
    y(m+1) = y(m) + h *feval(f,x(m),y(m));
end

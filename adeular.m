function [x,y] = adeular(f,x0,y0,xf,h)
n = fit(xf-x0)/h;
y(1)=y0;
x(1)=x0;
for m=1:n
    x(m+1) = x(m) +h;
    yp = y(m) + h*feval(f,x(m),y(m));
    yc = y(m) +h *feval(f,x(m+1),yp);%yp?
    y(m+1) = 0.5*(yp+yc);
end

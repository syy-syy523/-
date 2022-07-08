function [pl,ql,pr,qr] = pdex1bc(x1,u1,xr,ur,t)
pl = u1;
ql = 0;
pr = pi*exp(-t);
qr = 1;
end

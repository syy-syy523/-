%题1
%interp1函数
x = [0 0.1 0.2 0.3 0.4 0.6 0.7 0.8 0.9 1];
y = [0.3 0.5 1 1.4 1.6 0.6 0.4 0.8 1.5 2];
cx = 0.5;
cy0 = interp1(x,y,'linear');
cy1 = interp1(x,y,cx,'nearest');%最近邻插值
cy2 = interp1(x,y,cx);%分段线性插值
cy3 = interp1(x,y,cx,'spline');%分段三次样条插值
cy4 = interp1(x,y,cx,'cubic');%分段三次多项式插值
plot(x,y,'.-',cx,cy0,'r',cx,cy1,'o',cx,cy2,'*',cx,cy3,'+',cx,cy4,'.')



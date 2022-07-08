clear;
clc;
y0 = [2;2;2;0;3];
[t,x] = ode45('vdp',[0 3000],y0);
plot(t,x(:,2),'b-',t,x(:,3),'r-',t,x(:,5),'k-')

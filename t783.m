clear;clc;
%tx = dde23('dde3de2',lags,'ddex1hist2',[0,15]);
%plot(tx.x,tx.y(1,:),'k');
y0 = [0.5 0.5 0.5];
[t,x] = ode45('dde3de2',[0 3000],y0);
plot(t,x(:,1),'b-')
hold on;
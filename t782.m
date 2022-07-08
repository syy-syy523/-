lags = 0.17;
tx = dde23('dde3de',lags,'ddex1hist',[0,10]);
plot(tx.x,tx.y(1,:),'k');
hold on;
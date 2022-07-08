m = 0;
x = linspace(0,1,20);
t = linspace(0,2,10);
sol = pdepe(m,@pdefun,@pdexlic,@pdex1bc,x,t);
u = sol(:,:,1);
surf(x,t,u)
title('Numerical solution computed with 20 mesh points.')
xlabel('Distance x')
ylabel('Time t')
figure
plot(x,u(end,:))
title('solution at t = 2')
xlabel('distance x')
ylabel('u(x,2)')

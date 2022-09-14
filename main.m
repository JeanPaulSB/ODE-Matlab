[x,Y] = euler(0,4,4,50,"sqrt(y)/(2*x+1)");
[x1,Y1] = rk2(0,4,4,50,"sqrt(y)/(2*x+1)");
[x2,Y2] = heun(0,4,4,50,"sqrt(y)/(2*x+1)");
hold on;
plot(x,Y)
plot(x1,Y1)
plot(x2,Y2)

hold off;
legend('Euler','Rungen-Kutta2','Heun');
title('Solving (dy/dx) = sqrt(y)/(2*x+1) ')
xlabel('x')
ylabel("f(x)")


% rungen kutta 4 order
% author : Jean Paul Sierra
% github: JeanPaulSB
% y^2-t^2+1 %
% rk4 ODE %
% params : a,b,alpha,n,function as a string '3*x+2y' %
% output : [x,Y]
%
function [x,Y] = rk4(a,b,alpha,n,f)

f = inline(f);


h = (b-a)/n;

%INCREMENTO POR LA FUNCIÓN EVALUADA EN TI Y EN YI -> K1
% H * f(ti+h/2,+f(yi)+k1/2) -> k2
% H * f(ti+h/2,f(yi)+k2/2) -> k3 
% H * f(ti_+1+h/2,f(yi)+k3) -> k4

Y = zeros(1,n+1);
x = (a:h:b);
Y(1) = alpha;



for(i=1:n) 
    k1 = h*f(x(i),Y(i));
    k2 = h*(f(x(i)+h/2,Y(i)+k1/2));
    k3 = h*(f(x(i)+h/2,Y(i)+k2/2));
    k4 = h*(f(x(i+1),Y(i)+k3));
    Y(i+1) = Y(i)+((k1+2*k2+2*k3+k4)/6);
    

end
end
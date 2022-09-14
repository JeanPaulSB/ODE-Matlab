% euler method for ODE %
% params : a,b,alpha,n,function as a string '3*x+2y' %
% output : [x,Y]
% example of function call 
% euler(0,4,4,100,"sqrt(y)/(2*x+1)");
% a = 0,
% b = 4, 
% alpha = y(a) = 4,
% n = 100  
% f = "3*x+2y"
function [x,Y] = euler(a,b,alpha,n,f)

f = inline(f);


h = (b-a)/n;


Y = zeros(n+1);
x = (a:h:b);
Y(1) = alpha;
display('Solving using euler')
for(i=1:n)
    Y(i+1) = Y(i) + h*f(x(i),Y(i));
    fprintf("x = %12.8f y = %12.8f\n",x(i),Y(i))

end
end





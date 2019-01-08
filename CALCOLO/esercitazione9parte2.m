a=0.5;
b=1;
space=linspace(a,b);
f= @(x) sin(2*x).*cos(2*x);

%polyval(f(space),space);
plot(space,f(space),'-')
legend('data')

x=[1 3 6 10 12];
y=[122 188 270 160 120];
c0=[1;1];
fun = @(c,x)c(1).*x+c(2).*sin(x);
[c,resnorm]=lsqcurvefit(fun,c0,x,y)
%representacao grafica
plot(x,y,'o')
hold on
fplot(@(x)c(1).*x+c(2).*sin(x));
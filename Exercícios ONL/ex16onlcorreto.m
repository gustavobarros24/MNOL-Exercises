fun = @(x)x(1)*x(2)^2+(2-x(1))^2;

%gradiente
gradFun = @(x)[x(2)^2 - 4+2*x(1); 2*x(1)*x(2)];

%Combina função com gradiente
funWithGrad = @(x) deal(fun(x), gradFun(x));

%optim
op = optimoptions('fminunc', 'Algorithm', 'trust-region', 'SpecifyObjectiveGradient', true);

[x, fval, exitflag, output] = fminunc(funWithGrad, [1; 1], op);
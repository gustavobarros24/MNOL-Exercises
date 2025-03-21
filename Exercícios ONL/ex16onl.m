op=optimset('hessupdate','dfp');
fun = @(x)x(1)*x(2)^2+(2-x(1))^2;
[x,fval,exitflag,output] = fminunc(fun,[1;1],op);
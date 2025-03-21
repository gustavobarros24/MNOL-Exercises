%op=optimset('tolfun',1e-12);
%op=optimset('tolx',1e-20,'display','iter');
%op=optimset('plotfcn');
fun = @(x)-(20*x(1) + 26*x(2) + 4*x(1)*x(2)-4*x(1)^2-3*x(2)^2);
[x,fval,exitflag,output] = fminunc(fun,[0;0],op);
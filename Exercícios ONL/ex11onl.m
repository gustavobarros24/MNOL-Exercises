fun = @(x)-(-abs(x(1)*x(2))-x(2)^2);
%op = optimset('tolx', 1e-10);
%op=optimset('tolfun', 1e-12);
%op=optimset('tolx',1e-10, 'tolfun', 1e-12);
%op=optimset('display','iter');
%op=optimset('plotfcns',@optimplotfval);
[x,fval,exitflag,output] = fminsearch(fun, [-1 , 1]);
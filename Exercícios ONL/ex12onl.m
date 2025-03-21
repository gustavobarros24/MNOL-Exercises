fun = @(x)max((x(1)-1)^2, x(1)^2+4*(x(2)-1)^2);
%op = optimset('tolx', 1e-10);
%op=optimset('tolfun', 1e-12);
%op=optimset('tolx',1e-10, 'tolfun', 1e-12);
%op=optimset('display','iter');
%op=optimset('plotfcns',@optimplotfval);
[x,fval,exitflag,output] = fminsearch(fun,[1;1]);
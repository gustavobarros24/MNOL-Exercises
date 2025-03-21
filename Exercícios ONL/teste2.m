% options - opções para o controlo do processo de otimização.
% ativar para visualizar os resultados obtidos em cada iteração.
% op=optimset( Display’,’iter’);
% ativar para representar graficamente os valores da função objetivo ao longo das
% iterações
% op=optimset(’PlotFcns’,@optimplotfval);
% ativar para ter como tolerância de paragem 20 iterações
% op=optimset(’MaxIter’,20);
% ativar para ter tolerância tolfun = 10⁻¹²
%op=optimset(’TolFun’,1e-12);
% visualizar os resultados obtidos em cada iteração e a representação
% gráfica dos valores da função objetivo ao longo das itera ̧c ̃oes
% op=optimset(’Display’,’iter’,’PlotFcns’,@optimplotfval);
fun = @(x)max(abs(x(1)),abs(x(2)-1));
[x,fval,exitflag,output]=fminsearch(fun,[1,1])
% ativar para visualizar os resultados obtidos em cada iteração.
% op=optimset( Display’,’iter’);
% ativar para representar graficamente os valores da função objetivo ao longo das
% iterações
% op=optimset(’PlotFcns’,@optimplotfval);
% ativar para usar como tolerância de paragem TolX = 10^−10 e TolFun = 10^−12
% op=optimset(’TolX’,1e-10,’TolFun’,1e-12);
% ativar para ter como tolerância de paragem 20 iterações
% op=optimset(’MaxIter’,20);
% ativar para usar a fórmula de atualização DFP
% op=optimset(’hessupdate’,’dfp’)
% visualizar os resultados obtidos em cada iteração e a representação
% gráfica dos valores da função objetivo ao longo das itera ̧c ̃oes
% op=optimset(’Display’,’iter’,’PlotFcns’,@optimplotfval);
fun = @(x)x(1)^2+x(2)^2-x(1)*x(2);
[x,fval,exitflag,output]=fminunc(fun,[1,0])
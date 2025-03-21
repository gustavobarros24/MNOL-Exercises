 %a
x=[10 18 27 34]
y=[20 15 9 10]
s=spline(x,[-1 y -1/2])
%representacao da spline
novo_x = 10:0.1:34;
novo_y = ppval(s,novo_x);
plot(x,y,'o',novo_x,novo_y)
%resultado
ppval(s,29)
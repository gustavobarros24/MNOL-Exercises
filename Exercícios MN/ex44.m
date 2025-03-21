%a
x=[-2 1 2]
y=[-8 1 8]
s=spline(x,[12 y 20])
%representacao da spline
novo_x = -2:0.1:2;
novo_y = ppval(s,novo_x);
plot(x,y,'o',novo_x,novo_y)
%resultado
ppval(s,-1)
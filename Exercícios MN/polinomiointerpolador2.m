X=[0 1.25 2.5 3.75 5 6.25];
Y=[0.260 0.208 0.172 0.145 0.126 0.113];
[p,S] = polyfit(X,Y,2);
S.normr^2; %Soma Quadrados Residuos SQR
polyval(p,4) %p(4)
%representacao grafica
plot(X,Y,'o')
hold on
novo_x=0: 0.05 :6.25;
novo_y = polyval(p,novo_x);
plot(novo_x,novo_y,'g')
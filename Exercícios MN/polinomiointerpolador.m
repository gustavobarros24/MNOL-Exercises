X=[1.5 2.0 3.0 4.0];
Y=[4.9 3.3 2.0 1.5];
[p1, S1] = polyfit(X,Y,1);
SQR1=S1.normr^2;
[p2, S2] = polyfit(X,Y,2);
SQR2=S2.normr^2;
c0=[1;1];
[c,resnorm] = lsqcurvefit(@fun,c0,X,Y);
plot(X,Y,'o')
hold on
fplot(@(x)c(1)./x+c(2).*x,[1.5,4])
novo_x=1.5:0.05:4;
novo_y2= polyval(p2, novo_x);
novo_y1= polyval(p1, novo_x);
plot(novo_x,novo_y2,'k',novo_x,novo_y1,'g')
[x,fval,exitflag,output]=fsolve(@exerc_19,[1.9,1.1]);
 %funcao
 function[F]=exerc_19(x)
    F(1)=x(1)*x(2)+x(2)^3-3;
    F(2)=log(x(2))+x(1)/2-1;
 end
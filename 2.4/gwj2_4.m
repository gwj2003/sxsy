clear
m=628;
syms x a b c d e;
diff((a*x+m*c)/(c*x^2+a))
pretty(diff((a*x+m*c)/(c*x^2+a)))
vpa(diff(subs((100*x+m)/(x^2+100),x,m^(1/3))),8) 
x=m^(1/3)
f=@(x)(100*x+628)/(x^2+100);
for j=1:5
    x0=(100*rand-50)
    for i=1:20
        x0=f(x0);
        fprintf('%g,%g\n',i,x0)
    end 
end
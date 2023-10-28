clear
syms x
m=628;
f=(log(1+x-m*x^2)-x)/(1-cos(x));
limit(f)
f=((sqrt(m*x^2+2)-atan(m*x))/x);
limit(f,x,inf)
pretty(limit(f,x,inf))
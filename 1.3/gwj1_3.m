clear
syms x
m=628;
f=(x+sin(x))/(1+cos(x));
int(f,x)
pretty(int(f,x))
f=log(1+m*x)-m*x;
int(f,x,0,1)
pretty(int(f,x,0,1))
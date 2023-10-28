clear
syms x
m=628;
f=exp(m*x)*sin(x);
diff(f,2)
subs(f,x,0);
diff(f,6)
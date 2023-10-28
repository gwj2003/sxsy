clear
syms x
m=628;
f=cos(x*(m/200+sin(x)));
taylor(f,x,'Order',5,'ExpansionPoint',0)
pretty(taylor(f,x,'Order',5,'ExpansionPoint',0))
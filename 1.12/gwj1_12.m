clear
syms x
m=628;
y=x^3+sqrt(m)*x^2+(m/3-3)*x-sqrt(m)*(1-m/27);
fplot(x,y,[-sqrt(m)/3-2,-sqrt(m)/3+2])
axis([-10.5,-6,-2.5,2.5])
grid on
fzero('x^3+sqrt(628)*x^2+(628/3-3)*x-sqrt(628)*(1-628/27)',-10)
fzero('x^3+sqrt(628)*x^2+(628/3-3)*x-sqrt(628)*(1-628/27)',-8)
fzero('x^3+sqrt(628)*x^2+(628/3-3)*x-sqrt(628)*(1-628/27)',-6)
diff(y)
figure
fplot(x,diff(y),[-sqrt(m)/3-2,-sqrt(m)/3+2])
axis([-10,-7,-3,1])
grid on
fzero('3*x^2 + 4*157^(1/2)*x + 619/3',-10)
fzero('3*x^2 + 4*157^(1/2)*x + 619/3',-7)
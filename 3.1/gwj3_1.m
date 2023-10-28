clear
A=str2sym('[628,628-4;6-628,10-628]');
[P,D]=eig(A);
Q=inv(P);
syms n;
x=[1;2];
xn=P*(D.^n)*Q*x
B=1/10.*A
[P,D]=eig(B);
Q=inv(P);
xn=P*(D.^n)*Q*x
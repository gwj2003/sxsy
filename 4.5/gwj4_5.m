clear
syms k x0
X=1790:10:1980;
x=1790:10:1930;
Y=[3.9,5.3,7.2,9.6,12.9,17.1,23.2,31.4,38.6,50.2,62.9,76,92,106.5,123.2,131.7,150.7,179.3,204.0,226.5];
y=[3.9,5.3,7.2,9.6,12.9,17.1,23.2,31.4,38.6,50.2,62.9,76,92,106.5,123.2];
Z=log(Y);
z=log(y);
A=[1,x(1);1,x(15)];
B=[z(1);z(15)];
u=A\B;
x0=u(1)
k=u(2)
error=sum((x0*exp(k*x)-y).^2)
f=exp(x0+k*X);
plot(X,f,X,Y,'+');
hold on
t=polyfit(X,Z,1);
X0=t(2)
K=t(1)
f=exp(X0+K*X);
error=sum((X0*exp(K*X)-Y).^2)
plot(X,f);

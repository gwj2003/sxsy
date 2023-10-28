clear
syms a0 a1
m=9;
x=[1.5,1.8,2.4,2.8,3.4,3.7,4.2,4.7,5.3];
y=[8.9,10.1,12.4,14.3,16.2,17.8,19.6,22.0,24.1];
polyfit(x,y,1)
x1=sum(x);
x2=sum(x.^2);
y1=sum(y);
xy=sum(y.*x);
eql1=m*a0+x1*a1==y1
eql2=x1*a0+x2*a1==xy
[a0,a1]=solve([eql1,eql2],[a0,a1])
error=sum((y-(a0+a1.*x)).^2)
f=a0+a1*x;
plot(x,y,'+',x,f);
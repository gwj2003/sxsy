clear
x=1:27;
y=[21,65,127,281,558,923,1321,1801,2420,3125,3886,4638,5306,6028,6916,7646,8353,9049,9503,10098,10540,10910,11287,11598,11865,12086,12251];
a=[13000,2,0.1];
f=@(a,x)a(1)./(1+a(2)*exp(-a(3)*x));
[A,resnorm]=lsqcurvefit(f,a,x,y);
t=27;
while abs(f(A,t)-f(A,t+1))>1
    t=t+1;
end
f(A,t)
t
t=1:t;
plot(x,y,'+',t,f(A,t));
hold on
a=[13000,2,0.1,0.1];
f=@(a,x)a(1)./(1+a(2)*exp(-a(3)*x-a(4)*x.^2));
[A,resnorm]=lsqcurvefit(f,a,x,y);
t=27;
while abs(f(A,t)-f(A,t+1))>10
    t=t+1;
end
f(A,t)
t
t=1:t;
plot(t,f(A,t));
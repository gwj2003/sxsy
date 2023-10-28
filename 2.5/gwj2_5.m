clear
syms x
y=sin(x);
y1=taylor(y,x,'Order',2,'ExpansionPoint',0);
y2=taylor(y,x,'Order',4,'ExpansionPoint',0);
y3=taylor(y,x,'Order',6,'ExpansionPoint',0);
y4=taylor(y,x,'Order',8,'ExpansionPoint',0);
y5=taylor(y,x,'Order',10,'ExpansionPoint',0);
y6=taylor(y,x,'Order',12,'ExpansionPoint',0);
subplot(1,2,1)
fplot([y,y1,y2,y3],[-3*pi/2,3*pi/2])
grid on
subplot(1,2,2)
fplot([y,y4,y5,y6],[-3*pi/2,3*pi/2])
grid on
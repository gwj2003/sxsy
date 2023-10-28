clear
m=628;
x=-30:0.1:30;
t=[1000/m,500/m,100/m];
for i=1:3
    j=t(i);
    y=1/(sqrt(2*pi*j))*exp(-(x.^2)/2*(j^2));
    plot(x,y)
    hold on
end
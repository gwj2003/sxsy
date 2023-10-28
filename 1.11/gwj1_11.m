clear
m=628;
x=-5:0.1:5;
y=-5:0.1:5;
[x,y]=meshgrid(x,y);
z=m.*x.*exp(-(x.^2+y.^2));
mesh(x,y,z)
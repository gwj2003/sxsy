clear
m=628;
t=-m/100:0.1:m/100;
x=cos(t)+t.*sin(t);
y=sin(t)-t.*cos(t);
z=-t;
plot3(x,y,z)
grid on
clear
m=628;
t=-m/100:0.1:m/100;
x=(m/20)*cos(t);
y=(m/20)*sin(t);
z=t;
plot3(x,y,z)
grid on
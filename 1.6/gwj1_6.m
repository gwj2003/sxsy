clear
m=628;
A=[4,2,m-2;-3,0,5;1,5,2*m]
B=[3,4,0;2,0,-3;-2,1,1]
det(A)
inv(A)
eig(A)
[P,D]=eig(A);
X=P(1:3,1:1)
Y=P(1:3,2:2)
Z=P(1:3,3:3)
A\B  
A/B
C=[A B];
Q=rref(C)
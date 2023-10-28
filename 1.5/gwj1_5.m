clear
x=[];
x(1)=rand(1);
m=628;
for k=2:10
    x(k)=sqrt(m/100+x(k-1));
end
x
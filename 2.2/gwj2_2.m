clear
m=628;
f=@(x)(1-2*abs(x-1/2));
t=[1/4,1/10,1/100,1/m];
for j=1:4
    subplot(2,2,j)
    x0=t(j);
    for i=1:1:100
	    plot(i,f(x0),'+');
	    x0=f(x0);
	    hold on
    end
end
clear
m=628;
A=[3/4,7/18;1/4,11/18];
A(:,:,2)=[m,6-m;m-2,8-m];
A(:,:,3)=[m,1/4-m;m-3/4,1-m];
A(:,:,4)=[m-1,m;1-m,-m];
for i=1:4
eig(A(:,:,i))
[P,D]=eig(A(:,:,i))
X=P(1:2,1:1)
Y=P(1:2,2:2)
    for j=1:20
        x=[2*rand-1;2*rand-1];
        t=[];
        for k=1:40
            x=A(:,:,i)*x;
            t(k,1:2)=x;
        end
        t
        subplot(2,2,i)
        plot(t(1:40,1),t(1:40,2),'+')
        grid on
        hold on
    end
end
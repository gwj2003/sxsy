clear
A=[9,5;2,6]
for k=1:20
    x=[2*rand-1;2*rand-1]
    t=[];
    for i=1:40
        x=A*x;
        t(i,1:2)=x;
    end
    for j=1:40
        if t(j,1)==0
        else a=t(j,2)/t(j,1);
            fprintf('%g,%g\n',j,a);
        end
    end
    plot(t(1:40,1),t(1:40,2),'+')
    grid on
    hold on
end
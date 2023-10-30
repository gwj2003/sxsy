clear
for j=1:25
    AA=1/3*rand(1);
    Aa=((1-AA)*1/2)*rand(1);
    aa=1-AA-Aa;
    K=AA+Aa+aa;
    for i=1:2
        x(i)=AA(i)*AA(i)+AA(i)*Aa(i)*1/2+Aa(i)*AA(i)*1/2+Aa(i)*Aa(i)*1/4;
        y(i)=AA(i)*Aa(i)*1/2+AA(i)*aa(i)+Aa(i)*AA(i)*1/2+Aa(i)*Aa(i)*1/2+Aa(i)*aa(i)*1/2+aa(i)*AA(i)+aa(i)*Aa(i)*1/2;
        z(i)=aa(i)*aa(i)+Aa(i)*Aa(i)*1/4+Aa(i)*aa(i)*1/2+aa(i)*Aa(i)*1/2;
        k=x+y+z;
        AA(i+1)=x(i);
        Aa(i+1)=y(i);
        aa(i+1)=z(i);
    end
    tu=[AA,;Aa,;aa,];
    subplot(5,5,j);
    plot(1:3,tu');
    grid on
    title(j);
    legend('AA','Aa','aa');
end
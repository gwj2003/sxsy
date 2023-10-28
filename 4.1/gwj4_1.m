clear
f=[1,2,4,5]
for i=1:4
    for b=1:2000
        a=sqrt((b+f(i))^2-b^2);
        if (a==floor(a))
            fprintf(['a=%4i,b=%4i,c=%4i|'],a,b,b+f(i))
        end
    end
fprintf('\n')
end
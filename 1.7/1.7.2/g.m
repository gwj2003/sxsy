function y=g(x,f)
n=length(x);
for i=1:n
    y(i)=f(x(i));
end
end

fplot(@(x)g(x,@f),[-pi,pi])
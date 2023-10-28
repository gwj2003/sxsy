clear
for k=1:200 
	for b=1:1000
		a=sqrt((b+k)^2-b^2);
		if((a==floor(a))&&gcd(gcd(a,b),(b+k))==1)
            fprintf('%i,',k);
			break;
		end
	end
end
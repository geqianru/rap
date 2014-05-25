function y=ex(n)
T=10;
    function y_1=exin(lambda)
        y_1=exp(-lambda.*T).*(lambda.*T).^n;
    end
i=1;
t(i)=0.1;
while(t(i)<100)
R2(i)=exin(t(i));
t(i+1)=t(i)+0.1;
i=i+1;
end
R2(i)=exin(t(i));
y=trapz(t,R2);
end
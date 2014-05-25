function y_4=max1(n)
x_1=0;
x_2=1;
% C_r=5;
T=10;
D_0=10;
mu_10=10;
mu_11=5;
mu_20=20;
mu_21=10;
sigma_10=mu_10*0.4;
sigma_11=mu_11*0.4;
sigma_20=mu_20*0.4;
sigma_21=mu_21*0.4;
% C_10=100;
% C_11=200;
% C_20=100;
% C_21=200;
C_p=2000;
r=1;
sigma_1=sigma_10*(1-x_1)+sigma_11*x_1;
sigma_2=sigma_20*(1-x_2)+sigma_21*x_2;
mu_1=(1-x_1)*mu_10+x_1*mu_11;
mu_2=(1-x_2)*mu_20+x_2*mu_21;
% n=ceil(D_0/r);

%insideintegral=lambda.^n.*exp(-lambda.*T).*exp((-(lambda-mu_1-mu_2).^2)./(2.*(sigma_1.^2+sigma_2.^2)));
    function y1=ii2(lambda)
     y1=1./(factorial(n).*sqrt((sigma_1.^2+sigma_2.^2).*2.*pi)).*(lambda.*T).^n.*exp(-lambda.*T).*exp((-(lambda-mu_1-mu_2).^2)./(2.*(sigma_1.^2+sigma_2.^2)));
     end     

% i=1;
% t(i)=1;
% 
%   while(t(i)<200)
%     R2(i)=insideintegral(t(i));
%     t(i+1)=t(i)+1;
%     i=i+1;
%   end
% R2(i)=insideintegral(t(i));
% R=trapz(t,R2);
%    
% 
% y_4=R*max(0,n*r-D_0)*C_p;
%     function y2=in(n)
%        i=0.1;
%        t(i)=1;
%          while(t(i)<40)
%          R2(i)=ii2(t(i));
%          t(i+1)=t(i)+1;
%          i=i+1;
%          end
%        R2(i)=ii2(t(i));
%        y=trapz(t,R2); 
%     end

    function y_6=in(n)
     i=1;
     t(i)=0.1;
          while(t(i)<100)
          R2(i)=ii2(t(i));
          t(i+1)=t(i)+0.1;
          i=i+1;
          end
     R2(i)=ii2(t(i));
     y_6=trapz(t,R2);
    end

%     function t=in(n)
%        x=0:0.1:40;
%        z=ii2(x);
%        t=trapz(x,z)
%     end
 
y_4=in(n).*(n.*r-D_0).*C_p;
    while (n<=100)
     y_3=y_4;
     n=n+1;  
     y_4=y_3+in(n).*(n.*r-D_0).*C_p;
    end


end

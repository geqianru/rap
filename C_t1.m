% total costs, objective function%
function [y]=C_t1(x_1,x_2)
T=10;                %period of service contract%                
mu_10=1;             %mean failure rate of component 1 from cheap supplier%
mu_11=0.5;           %mean failure rate of component 1 from expensive supplier%
mu_20=0.6;           %mean failure rate of component 2 from cheap supplier%
mu_21=0.3;           %mean failure rate of component 2 from expensive supplier%
sigma_10=mu_10*0.4;  %standard deviation of  component 1 from cheap supplier%
sigma_11=mu_11*0.4;  %standard deviation of  component 1 from expensive supplier%
sigma_20=mu_20*0.4;  %standard deviation of  component 2 from cheap supplier%
sigma_21=mu_21*0.4;  %standard deviation of  component 2 from expensive supplier%
C_10=5000;           %acquisition cost of component 1 from cheap supplier%
C_11=9000;           %acquisition cost of component 1 from expensive supplier%
C_20=40000;          %acquisition cost of component 2 from cheap supplier%
C_21=60000;          %acquisition cost of component 1 from expensive supplier%
C_p=3000;            %penalty cost when downtime exceeds predetermined level%
C_r11=1000;          %repair cost per unit time%
C_r12=1800;
C_r21=3000;
C_r22=5000;
D_0=12;              %predetermined total downtime of a service contract%
r=1;                 %repair time%
sigma_1=sigma_10*(1-x_1)+sigma_11*x_1;                                      %sigma of component 1%
sigma_2=sigma_20*(1-x_2)+sigma_21*x_2;                                      %sigma of component 2%
mu_1=(1-x_1)*mu_10+x_1*mu_11;                                               %mean failure rate of component 1%
mu_2=(1-x_2)*mu_20+x_2*mu_21;                                               %mean failure rate of component 2%
y_1=(1-x_1)*C_10+x_1*C_11+(1-x_2)*C_20+x_2*C_21;                            %acquisiton costs%
y_2=C_r11*T*(1-x_1)*mu_10+C_r12*T*x_1*mu_11+C_r21*T*(1-x_2)*mu_20+C_r22*T*x_2*mu_21;                %repair costs%

% e_1=10.^(-100);
n=ceil(D_0/r);                                                              %downtime times%
%inside part of the integral of probability % 
%lambda means the %
function ii=yi(lambda)
     ii=poisspdf(n,lambda.*T).*normpdf(lambda,mu_1+mu_2,sqrt(sigma_1.^2+sigma_2.^2));    
end 

%.*(lambda.*T).^n.*exp(-lambda.*T).*exp((-(lambda-mu_1-mu_2).^2)./(2.*(sigma_1.^2+sigma_2.^2))) ;%


%     function t=in(n)                                                                       
%        x=0:0.1:40;
%        z=yi(x);
%        t=trapz(x,z);
%     end



%integral of the probability%
function y=in(n)
      i=1;
    t(i)=0.1;
    while(t(i)<50)
       R2(i)=yi(t(i));
       t(i+1)=t(i)+0.1;
       i=i+1;
    end
    R2(i)=yi(t(i));
    y=trapz(t,R2); 
end



% y_4=in(n).*max(0,n.*r-D_0).*C_p;
y_4=in(n).*(n.*r-D_0).*C_p;
    while (n<=50)
     y_3=y_4;
     n=n+1;  
     y_4=y_3+in(n).*(n.*r-D_0).*C_p;
    end
   
y_4=y_3+in(n).*(n.*r-D_0).*C_p;    
    

y=y_1+y_2+y_4;
display(y_1);
display(y_2);
display(y_4);
display(y);
display(C_p);
end
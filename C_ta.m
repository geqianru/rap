function y=C_ta(x_1,x_2)
T=10;                %period of service contract%                
mu_10=10;            %mean failure rate of component 1 from cheap supplier%
mu_11=5;             %mean failure rate of component 1 from expensive supplier%
mu_20=10;            %mean failure rate of component 2 from cheap supplier%
mu_21=5;             %mean failure rate of component 2 from expensive supplier%
sigma_10=mu_10*0.4;  %standard deviation of  component 1 from cheap supplier%
sigma_11=mu_11*0.4;  %standard deviation of  component 1 from expensive supplier%
sigma_20=mu_20*0.4;  %standard deviation of  component 2 from cheap supplier%
sigma_21=mu_21*0.4;  %standard deviation of  component 2 from expensive supplier%
C_p=2000;            %penalty cost when downtime exceeds predetermined level%
D_0=50;              %predetermined total downtime of a service contract%
r=2;                 %repair time%
n=ceil(D_0/r);       %times of downtime%
sigma_1=sigma_10*(1-x_1)+sigma_11*x_1;                                      %sigma of component 1%
sigma_2=sigma_20*(1-x_2)+sigma_21*x_2;                                      %sigma of component 2%
mu_1=(1-x_1)*mu_10+x_1*mu_11;                                               %mean failure rate of component 1%
mu_2=(1-x_2)*mu_20+x_2*mu_21;                                               %mean failure rate of component 2%
lambda=mu_1+mu_2;
Pn=poisspdf(n,lambda.*T);                                                   %the probability that there are n failures in [0,T]%

y_4=poisspdf(n,lambda.*T).*(n.*r-D_0).*C_p;
    while (n<=300)
     y_3=y_4;
     n=n+1;  
     y_4=y_3+poisspdf(n,lambda.*T).*(n.*r-D_0).*C_p;
    end
   
y_4=poisspdf(n-1,lambda.*T).*(n-1.*r-D_0).*C_p;+poisspdf(n,lambda.*T).*(n.*r-D_0).*C_p;     
y=y_4;
end
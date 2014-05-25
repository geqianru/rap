function insideintegral=insideintegral(lambda)
x_1=1;
x_2=1;
% C_r=5;
%Service period%
T=10;
%mean failure rates%
mu_10=10;
mu_11=5;
mu_20=10;
mu_21=5;
%variation of failure rates%
sigma_10=mu_10*0.4;
sigma_11=mu_11*0.4;
sigma_20=mu_20*0.4;
sigma_21=mu_21*0.4;
% C_10=100;
% C_11=200;                                                                
% C_20=50;
% C_21=100;
% C_p=2000;
% D_0=10;
% r=1;

sigma_1=sigma_10*(1-x_1)+sigma_11*x_1;
sigma_2=sigma_20*(1-x_2)+sigma_21*x_2;
mu_1=(1-x_1)*mu_10+x_1*mu_11;
mu_2=(1-x_2)*mu_20+x_2*mu_21;
n=50;
%insideintegral=1./factorial(n).*(lambda.*T).^n.*exp(-lambda.*T).*normpdf(lambda,mu_1+mu_2,sqrt(sigma_1.^2+sigma_2.^2));
insideintegral=poisspdf(n,lambda.*T).*normpdf(lambda,mu_1+mu_2,sqrt(sigma_1.^2+sigma_2.^2)); 
end
     
%exp((-(lambda-mu_1-mu_2).^2)./(2.*(sigma_1.^2+sigma_2.^2)))in
%.*(lambda.*T).^n.*exp(-lambda.*T).*exp((-(lambda-mu_1-mu_2).^2)./(2.*(sigma_1.^2+sigma_2.^2)));
%1./(factorial(n).*sqrt((sigma_1.^2+sigma_2.^2).*2.*pi)).*
 t=0.01:0.01:15;
[y]=C_t(0,1,5,10,10,3,5,4,6,2,3,3,4,5,3,6,4,10,0.5);
plot(t, y);
close all;
clear all;
clc;
y=C_t(1,1);
poisspdf(n,lambda*T)*
% syms lambda;
% % assume(n >= 0);
% % assumeAlso(n,'integer');
% % expected penalty costs due to downtime exceeding service contract%
% % y_3=int(normpdf(lambda,mu_1+mu_2,sqrt(sigma_1^2+sigma_2^2)),lambda,0,inf);
% % y_4=poisspdf(n,lambda*T);
% y_4=symsum(T^n/factorial(n),n,ceil(D_0/r),inf);
y_3=symsum(((T^n/(factorial(n)*sqrt((sigma_1^2+sigma_2^2)*2*pi)))*int(lambda^n*exp(-lambda*T)*normpdf(lambda,mu_1+mu_2,sqrt(sigma_1^2+sigma_2^2)),lambda,0,inf)*max(0,n*r-D_0)*C_p),n,ceil(D_0/r),inf);  
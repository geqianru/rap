% total costs, objective function%
function[y,y_1,y_2,y_3]=C_t4(x_1,x_2)
C_r=10;
T=100;
mu_10=0.1;
mu_11=0.05;
mu_20=0.1;
mu_21=0.05;
sigma_10=mu_10*0.2;
sigma_11=mu_11*0.2;
sigma_20=mu_20*0.2;
sigma_21=mu_21*0.2;
C_10=100;
C_11=200;
C_20=100;
C_21=200;
C_p=10;
D_0=10;
r=1;
y_1=C_r*T*((1-x_1)*mu_10+x_1*mu_11+(1-x_2)*mu_20+x_2*mu_21);%repair costs%
y_2=(1-x_1)*C_10+x_1*C_11+(1-x_2)*C_20+x_2*C_21;%acquisiton costs%
sigma_1=sigma_10*(1-x_1)+sigma_11*x_1;
sigma_2=sigma_20*(1-x_2)+sigma_21*x_2;
mu_1=(1-x_1)*mu_10+x_1*mu_11;
mu_2=(1-x_2)*mu_20+x_2*mu_21;
%penalty costs%
ep=10.^(-10);
y_3=0;
y_4=0;
n=ceil(D_0/r);
    while (abs(y_3-y_4)>=ep)
     y_3=y_4;
     y_4=y_3+T^n/(factorial(n)*sqrt((sigma_1^2+sigma_2^2)*2*pi))*int(lambda^n*exp(-lambda*T)*normpdf(lambda,mu_1+mu_2,sqrt(sigma_1^2+sigma_2^2)),lambda,0,inf)*max(0,n*r-D_0)*C_p;
     n=n+1;
    end    
y=y_1+y_2+y_4;%total costs%
end
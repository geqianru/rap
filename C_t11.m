function y=C_t11(x_1,x_2)

C_10=5000;          %acquisition cost of component 1 from cheap supplier%
C_11=9000;          %acquisition cost of component 1 from expensive supplier%
C_20=40000;           %acquisition cost of component 2 from cheap supplier%
C_21=60000;          %acquisition cost of component 1 from expensive supplier%
%C_p=2000;            %penalty cost when downtime exceeds predetermined level%
%D_0=2;               %predetermined total downtime of a service contract%
%r=1;                 %repair time%
%sigma_1=sigma_10*(1-x_1)+sigma_11*x_1;                                      %sigma of component 1%
%sigma_2=sigma_20*(1-x_2)+sigma_21*x_2;                                      %sigma of component 2%
% mu_1=(1-x_1)*mu_10+x_1*mu_11;                                               %mean failure rate of component 1%
% mu_2=(1-x_2)*mu_20+x_2*mu_21;                                               %mean failure rate of component 2%
y_1=(1-x_1)*C_10+x_1*C_11+(1-x_2)*C_20+x_2*C_21;                            %acquisiton costs%
%y_2=C_r11*T*(1-x_1)*mu_10+C_r12*T*x_1*mu_11+C_r21*T*(1-x_2)*mu_20+C_r22*T*x_2*mu_21;
%y_2=C_r*T*((1-x_1)*mu_10+x_1*mu_11+(1-x_2)*mu_20+x_2*mu_21); 
y=y_1;
end
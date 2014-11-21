function [y]= conpoi(lambda_1,lambda_2)
r_1=5;
r_2=3;
T=10;
% lambda_1=0.5;
% lambda_2=0.6;
 %P = zeros(30,30); 
for i = [1:1:30]
 	  for j = [1:1:30]
          %display([i,j]);
          P(i,j)=poisspdf(i-1,lambda_1.*T).*poisspdf(j-1,lambda_2.*T).*(r_1.*(i-1)+r_2.*(j-1));
          %display(P);
      end
end
%display(P(30,30))
y=sum(sum(P));
y_1=lambda_1.*T.*r_1+lambda_2.*T.*r_2;
display(y);
display(y_1);
end
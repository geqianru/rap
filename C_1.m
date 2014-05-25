pd = makedist('Normal')

%pd = 

%   NormalDistribution
% 
%   Normal distribution
%        mu = 0
%     sigma = 1

%Specify the x values and compute the pdf.

x = -3:.1:3;
pdf_normal = pdf(pd,x);

%Plot the pdf.

plot(x,pdf_normal,'LineWidth',2)

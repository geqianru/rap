clear;
% i=1;
% t(i)=0;
% while(t(i)<60)
% R3(i)=insideintegral(t(i));
% t(i+1)=t(i)+0.01;
% i=i+1; 
% end
% R3(i)=insideintegral(t(i));

% % i=1;
% % t(i)=0;
% % while(t(i)<400)
% % R3(i)=pr(t(i));
% % t(i+1)=t(i)+1;
% % i=i+1;
% % end
% % R3(i)=pr(t(i));
% 
% j=1;
% s(j)=0;
% while(s(j)<50)
% R3(j)=inte(s(j));
% s(j+1)=s(j)+1;
% j=j+1; 
% end
% R3(j)=inte(s(j));
% plot(s,R3)

% j=1;
% s(j)=1;
% delta=-1e-12;
% R3=0;
% R4=inte(s(j));
% while(R4-R3>0 | R4-R3<delta)
% R3=R4;
% s(j+1)=s(j)+1;
% j=j+1;
% R4=R3+inte(s(j));
% display(R4);
% end
% R4(j)=inte(s(j));

% % % % i=1;
% % t(i)=0;
% % while(t(i)<200)
% % R3(i)=exp(-10).*(10).^(t(i))./(factorial(t(i)));
% % t(i+1)=t(i)+1;
% % i=i+1;
% % end
% % R3(i)=exp(-10).*(10).^(t(i))./(factorial(t(i)));
% 
% % i=1;
% % t(i)=1;
% % while(t(i)<100)
% % R3(i)=max1(t(i));
% % t(i+1)=t(i)+1;
% % i=i+1;
% % end
% % R3(i)=max1(t(i));
% % i=1;
% % t(i)=100;
% % while(t(i)<200000)
% % R4(i)=fT5(t(i));
% % t(i+1)=t(i)+500;
% % i=i+1;
% % end
% % R4(i)=fT5(t(i));
% % i=1;
% % t(i)=100;
% % while(t(i)<200000)
% % R5(i)=fT6(t(i));
% % t(i+1)=t(i)+500;
% % i=i+1;
% % end
% % R5(i)=fT6(t(i));


% i=1;
% C_p(i)=0;
% while(C_p(i)>=0&C_p(i)<12000)
% R3(i)=Cp(C_p(i),0,0);
% C_p(i+1)=C_p(i)+200;
% i=i+1;
% display([i]);
% end
% R3(i)=Cp(C_p(i),0,0);
% plot(C_p,R3,'r')
% hold on
% xlabel('C_p'); ylabel('Total costs');
% 
% i=1;
% C_p(i)=0;
% while(C_p(i)>=0&C_p(i)<12000)
% R4(i)=Cp(C_p(i),0,1);
% C_p(i+1)=C_p(i)+200;
% i=i+1;
% display([i]);
% end
% R4(i)=Cp(C_p(i),0,1);
% plot(C_p,R4,'b')
% hold on
% 
% i=1;
% C_p(i)=0;
% while(C_p(i)>=0&C_p(i)<12000)
% R5(i)=Cp(C_p(i),1,0);
% C_p(i+1)=C_p(i)+200;
% i=i+1;
% display([i]);
% end
% R5(i)=Cp(C_p(i),1,0);
% plot(C_p,R5,'m')
% hold on
% 
% i=1;
% C_p(i)=0;
% while(C_p(i)>=0&C_p(i)<12000)
% R6(i)=Cp(C_p(i),1,1);
% C_p(i+1)=C_p(i)+200;
% i=i+1;
% display([i]);
% end
% R6(i)=Cp(C_p(i),1,1);
% plot(C_p,R6,'k')

% plot(C_p,R3,'r');
% hold on
% xlabel('C_p'); ylabel('Total costs');
% plot(C_p,R4,'b');
% hold on
% plot(C_p,R5,'m');
% hold on
% plot(C_p,R6,'k');
% hold off

% i=1;
% D_0(i)=0;
% while(D_0(i)>=0&D_0(i)<36)
% R3(i)=d(D_0(i),0,0);
% D_0(i+1)=D_0(i)+2;
% i=i+1;
% display([i]);
% end
% R3(i)=d(D_0(i),0,0);
% plot(D_0,R3,'r','DisplayName','(0,0)')
% hold on
% %legend('-DynamicLegend');
% xlabel('D_0'); ylabel('Total costs');
% 
% i=1;
% D_0(i)=0;
% while(D_0(i)>=0&D_0(i)<36)
% R4(i)=d(D_0(i),0,1);
% D_0(i+1)=D_0(i)+2;
% i=i+1;
% display([i]);
% end
% R4(i)=d(D_0(i),0,1);
% plot(D_0,R4,'b','DisplayName','(0,1)')
% hold on
% 
% i=1;
% D_0(i)=0;
% while(D_0(i)>=0&D_0(i)<36)
% R5(i)=d(D_0(i),1,0);
% D_0(i+1)=D_0(i)+2;
% i=i+1;
% display([i]);
% end
% R5(i)=d(D_0(i),1,0);
% plot(D_0,R5,'m','DisplayName','(1,0)')
% hold on
% 
% i=1;
% D_0(i)=0;
% while(D_0(i)>=0&D_0(i)<36)
% R6(i)=d(D_0(i),1,1);
% D_0(i+1)=D_0(i)+2;
% i=i+1;
% display([i]);
% end
% R6(i)=d(D_0(i),1,1);
% plot(D_0,R6,'k','DisplayName','(1,1)')

% plot(t,R,t,R2,t,R3,t,R4,t,R5,t,R6)
% 
% X = -3 : .1 : 3;
% 
% [x,y] = meshgrid(X,X);
% 
% z = 1./(3+x.^2+y.^2);
% 
% surf(z)
% 
% xlabel('x'); ylabel('y');

% R1 = zeros(21,8);   % initialize Jvals to 100x100 matrix of 0's
% C_p = [0:500:10000]; %linspace(3000, 10, 5000);
% D_0 = [0:5:35]; %linspace(0, 1, 50);
% for i = [1:21]
% 	  for j = [1:8]
%       display([i,j]);
% 	  %t = [theta0_vals(i); theta1_vals(j)];
% 	  R1(i,j) = TC(C_p(i),D_0(j),0,0); %% YOUR CODE HERE 
%     end
% end
% 
% R1 = R1';
% surf(C_p, D_0, R1,'FaceColor',[1 0 0],'EdgeColor',[1 0 0])
% 
% xlabel('C_p'); ylabel('D_0')
% hold on;
% 
% R2 = zeros(21,8);  
% 
% for i = [1:21]
% 	  for j = [1:8]
%       display([i,j]);
% 	  %t = [theta0_vals(i); theta1_vals(j)];
% 	  R2(i,j) = TC(C_p(i),D_0(j),0,1); %% YOUR CODE HERE %%
%     end
% end
% R2 = R2';
% surf(C_p, D_0, R2,'FaceColor',[0 0 1],'EdgeColor',[0 0 1]);
% hold on;
% 
% R3 = zeros(21,8);
% 
% for i = [1:21]
% 	  for j = [1:8]
%       display([i,j]);
% 	  %t = [theta0_vals(i); theta1_vals(j)];
% 	  R3(i,j) = TC(C_p(i),D_0(j),1,0); %% YOUR CODE HERE %%
%     end
% end
% R3 = R3';
% surf(C_p, D_0, R3,'FaceColor',[1 1 0],'EdgeColor',[1 1 0]);
% hold on;
% 
% R4 = zeros(21,8); 
% 
% for i = [1:21]
% 	  for j = [1:8]
%       display([i,j]);
% 	  %t = [theta0_vals(i); theta1_vals(j)];
% 	  R4(i,j) = TC(C_p(i),D_0(j),1,1); %% YOUR CODE HERE %%
%     end
% end
% R4 = R4';
% surf(C_p, D_0, R4,'FaceColor',[1 0 1],'EdgeColor',[1 0 1]);
% hold off;
% J_vals = J_vals';
% figure;
% surf(C_p, D_0, J_vals)
% 
% xlabel('C_p'); ylabel('D_0')
% hold on;
% 
% [C_p,D_0]=meshgrid(3000:10:5000, 0:1:50);
% R3=TC(C_p,D_0);
% surf(R3);
% xlabel('C_p'); ylabel('D_0');
% 
% k = 5;
% n = 2^k-1;
% [x,y,z] = sphere(n);
% c = hadamard(2^k);
% surf(x,y,z,c);
% colormap([1  1  0; 0  1  1])
% axis equal
% 
%  i=1;
%  D_0(i)=0;
%  while(D_0(i)>=0&D_0(i)<10)
%      j=100;
%      C_p(j)=3000;
%      while(C_p(j)>=3000&C_p(j)<4000) 
%      R3(i,j)=TC(C_p(j),D_0(i),0,0);
%      C_p(j+1)=C_p(j)+100;
%      j=j+1;
%      end
%      D_0(i+1)=D_0(i)+1;
%      i=i+1;
%  end
%  R3(i,j)=TC(C_p(j),D_0(i),0,0);
%  surf(D_0,C_p,R3);
 
























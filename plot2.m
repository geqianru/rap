close all;
clear all;
clc;
plot3(0,0,C_t(0,0),'b+',0,1,C_t(0,1),'b+',1,0,C_t(1,0),'b+',1,1,C_t(1,1),'b+');
xlabel('x_1');
ylabel('x_2');
zlabel('Total costs')

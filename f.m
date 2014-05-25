function [y]=f(a)
syms k;
y=symsum((k-18).*6^k.*exp(-6)/factorial(k),a,Inf);
end
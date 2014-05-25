function expo=expo(lambda)
T=10;
n=40;
expo=1./factorial(n).exp(-lambda.*T).*(lambda.*T).^n;
end

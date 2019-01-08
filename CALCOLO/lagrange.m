function [coeff] = lagrange(x,y)
%Lagrange Summary of this function goes here
%   Detailed explanation goes here
%   x vettore x
%   y vettore soluzioni
%   coeff vettore coefficienti

coeff=y;

for i =1:numel(x)
    coeff(i)=coeff(i)/prod(x(i)-x([1:i-1,i+1:end]));
end

end


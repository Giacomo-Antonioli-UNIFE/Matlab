function [p,coeff] = polyLagrange(x,y, punti)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
n1=numel(y); coeff =zeros(size(x)); p=zeros(size(punti));
for k=1:n1
    coeff(k)= y(k) / prod ( x(k) - x ( [1:k-1, k+1:n1] ) );
end
for j=1:numel(punti)
    ij = find ( punti(j) == x );
    if isempty (ij)
        % calcolo del polinomio di lagrange
        p(j) = prod ( punti (j) -x ) * sum (coeff ./ (punti(j) -x));
    else
        p(j) = y (ij(1));
    end
end
end



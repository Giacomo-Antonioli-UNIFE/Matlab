function [R] = invupper(R)
%ERRORCALC Summary of this function goes here
%   Detailed explanation goes here
R=triu(R,0)

[m,n]=size(R)

R(n,n)=1/R(n,n)

for i= n-1: -1: 1
    %R(i,i) = 1/R(i,i)
    for j= n: -1 :i
        
        
        %syms k
        %R(i,j) = (-1)* (symsum( R(i,k)*R(k, j) , k, i+1, j)/ R(i, i) )
        
       
    end
end




end


function [L,R,deter] = myGaussDiag(A)
%ERRORCALC Summary of this function goes here
%   Detailed explanation goes here

%[m,n]=size(A);

%m1=zeros(m,1);
%i=0;

%for i=0:1:n-1
 %   m1(2:n)=A(2:n,i+1)/A(i+1,i+1)
    
  %  A(1:n,1);
   % m1(1:n,1);
    %A(1:n,1)-m1(1:n,1).*A(1,1:n)
    %A
    %m1
    %m1=zeros(m,1);
%end

%end
n = max(size(A));
for k = 1 : n-1
if ( abs( A(k,k) ) < eps * norm(A,inf) )
error('fattorizzazione non effettuabile.');
else
% for i = k+1:n
% A(i,k) = A(i,k)/A(k,k);
% for j = k+1:n
% A(i,j) = A(i,j)-A(i,k)*A(k,j);
A(k+1:n, k) = A(k+1:n, k) ./ A(k,k);
% operazione di base a livello 2:
% aggiornamento mediante diadi
A(k+1:n, k+1:n) = A(k+1:n, k+1:n) - A(k+1:n, k)*A(k, k+1:n);
end
end
deter = prod(diag(A));
R = triu(A);
L = eye(n) + (A - R); % si puo’ migliorare...
end
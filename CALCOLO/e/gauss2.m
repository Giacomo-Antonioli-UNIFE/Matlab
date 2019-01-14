function [L,R,P]=gauss2(A);
% fattorizzazione di Gauss con pivoting parziale - II versione
% P e' un vettore!!
%
[m,n]=(size(A));
temp=zeros(1,n);
P=1:m;
tol=eps*norm(A,inf);
r=min([m-1,n]);
for k=1:r
   [amax,ind]=max(abs(A(k:m,k)));
   ind=ind+k-1;
   if k~= ind
      aux=P(k);
      P(k)=P(ind);
      P(ind)=aux;
      temp=A(ind,:);
      A(ind,:)=A(k,:);
      A(k,:)=temp;
   end;
   if abs(A(k,k))>tol
      A(k+1:m,k)=A(k+1:m,k)/A(k,k);
      %  operazione di base: aggiornamento mediante diadi
      A(k+1:m,k+1:n)=A(k+1:m,k+1:n)-A(k+1:m,k)*A(k,k+1:n);
   end;
end;
R=zeros(m,n);L=eye(m);
R=triu(A);
L=L+tril(A(1:m,1:m),-1);
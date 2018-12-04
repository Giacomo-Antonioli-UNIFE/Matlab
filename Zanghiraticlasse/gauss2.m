function [L,R,P,deter] = gauss2(A)
% fattorizzazione di Gauss con pivoting parziale - II versione
%
n = size(A,1);
deter = 1;
temp = zeros(1,size(A,2));
P = 1:n;
tol = eps*norm(A,inf);
for k = 1:n-1
    [amax,ind] = max(abs(A(k:n,k)));
    ind = ind+k-1;
    if k~= ind
        aux = P(k); P(k) = P(ind); P(ind) = aux;
        deter = -deter;
        temp = A(ind,:); A(ind,:) = A(k,:); A(k,:) = temp;
    end
    deter = deter*A(k,k);
    if abs(A(k,k))>tol
        A(k+1:end,k) = A(k+1:end,k)/A(k,k);
        %  operazione di base: aggiornamento mediante diadi
        A(k+1:end,k+1:end) = A(k+1:end,k+1:end)-A(k+1:end,k)*A(k,k+1:end);
    end
end
deter = deter*A(n,n);
R = triu(A);
L = eye(n) + tril(A(1:n,1:n),-1);

end
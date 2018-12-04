function [L,R,P] = gausspivotingparziale(A)

[n,~] = size(A);
P=1:n;

for i=1:n-1
    if(abs(A(i,i)) < eps * norm(A,inf))
        error("Matrice non fattorizzabile.");
    else
        [Pmax, iPmax] = max(abs(A(i:n,i)));
        if(iPmax ~= i)
            Pmax;
            fprintf("SCAMBIO %f con %f\n",P(i),P(iPmax));
            A(i,i);
            auxi=P(i);
            P(i) = P(iPmax);
            P(iPmax) = auxi;
            Atemp = A(iPmax,1:n);
            A(iPmax,1:n) = A(i,1:n);
            A(i,1:n) = Atemp;
        
        end
        A(i+1:n,i) = A(i+1:n,i)/A(i,i);
        A(i+1:n,i+1:n) = A(i+1:n,i+1:n) - A(i+1:n,i)*A(i,i+1:n);
    end
end
    R = triu(A);
    L = eye(n) + (A - R);
    det = prod(diag(A));
    P
end
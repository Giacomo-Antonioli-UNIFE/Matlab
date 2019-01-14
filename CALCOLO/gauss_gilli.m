function [L, R, deter] = gauss_gilli(A)

%Alessandro Gilli
%Ad ogni iterazione utilizza le colonne di L ,inizializzato
%con tutti zeri, come vettore m, poi aggiorna A, sfruttando R sia come matrice
%identità che come vettore delle basi canoniche per creare ad ogni step L.
%Sommando ad L la matrice identità, avendo già i termini invertiti di
%segno (rispetto ad L inversa), al termine delle iterazioni quello che 
%otteniamo sarà L e non l'inversa di L.

[n,~] = size(A);
L = zeros(n);
R = eye(n);

for i=1:n
    if(abs(A(i,i)) < eps * norm(A,inf))
        error("Matrice non fattorizzabile.");
    else
        L(i+1:n,i) = A(i+1:n,i)/A(i,i); 
        A = (R-L(1:n,i)*R(i,1:n))*A;
    end
end
    L = L + eye(n);
    R = A;
    deter = prod(diag(R));
end


function [] = Esercitazione3_1()
%ESERCITAZIONE3_1 Summary of this function goes here
%   Detailed explanation goes here
clear all:
close all;
clc;


dim=5;
A=rand(dim,dim);
B=triu(A);
R=B;
[m, n] = size(R);
if ( isempty( find( diag(R) == 0 ) ) ) % oppure find( ~diag(R) ) 
    R(n,n) = 1 / R(n,n); %Sostituisco il valore della diagonale con il suo inverso
    for i = n-1 : -1 : 1 R(i,i) = 1 / R(i,i); %Pavimento la radice dall'iesimo elemento fino al n-esimo
        %Nel for sottostante moltiplico ogni elemento della riga per il
        %corrispondente elemento della colonna e poi lo moltiplico per
        %lelemnto centrale che ho sostituito con il suo inverso e sottraggo
        %sempre al valore della riga j perche tanto devo sottrare quel
        %prodotto a tutta la riga 
        for j = n : -1 : i+1 
            % s = 0; 
            % for k = i+1 : j 
            % s = s + R(i,k)*R(k,j); 
            % end 
            % R(i,j) = -s*R(i,i);
            R(i,j) = -( R(i, i+1:j)*R(i+1:j, j) )*R(i,i);
        end
    end
else error('la matrice e'' singolare');
end
R
inv(B)

B=tril(A);
R=B;
[m, n] = size(R);
if ( isempty( find( diag(R) == 0 ) ) ) % oppure find( ~diag(R) ) 
    R(n,n) = 1 / R(n,n); %Sostituisco il valore della diagonale con il suo inverso
    
else error('la matrice e'' singolare');
end
    for i = 1 : 1 : n-1 
        R(i,i) = 1 / R(i,i); %Pavimento la radice dall'iesimo elemento fino al n-esimo
        %Nel for sottostante moltiplico ogni elemento della riga per il
        %corrispondente elemento della colonna e poi lo moltiplico per
        %lelemnto centrale che ho sostituito con il suo inverso e sottraggo
        %sempre al valore della riga j perche tanto devo sottrare quel
        %prodotto a tutta la riga 
        for j = 1 : 1 : i-1
            % s = 0; 
            % for k = i+1 : j 
            % s = s + R(i,k)*R(k,j); 
            % end 
            % R(i,j) = -s*R(i,i);
            R(i,j) = -( R(i, 1:i-1)*R(1:i-1, j) )*R(i,i);
        end
    end
R
inv(B)
end



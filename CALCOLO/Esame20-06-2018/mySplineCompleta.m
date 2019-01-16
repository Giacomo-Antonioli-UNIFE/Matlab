function [C] = mySplineCompleta(x,y, z0, zf)
%MYSPLINECOMPLETA - Coeff. spline cubica completa interpolante
%INPUT: x (double array) - vettore dei nodi di intrpolazione
%       y (double array) - vettore dei valori della funzione nei nodi
%       z0 (double) - valore della defivata prima nel nodo iniziale
%       zf (double) - valore della derivata prima del nodo finale
%OUTPUT: C (double array) - matrice con tante righe quanti sono i
%sottointervalli e 4 colonne, contenenti i coeff. del polinomi di grado 3,
%da quello della potenza 3 a quello della potenza 0
%
% C(i,1) * (x-x_i)^3 + C(i,2) * (x-x_i)^2 + C(i,3) * (x-x_i) + C(i,4)
%
%Rappresentazione 'pp' (piecewise polynomial)

x = x(:); y = y(:);
m = length(x);
h = diff(x); %m-1 valori di h
d0 = 2* ( h(1:m-2) + h(2:m-1) ); %diagonale principale
d1 = [0; h(1:m-3)]; %prima sopradiagonale della matrice
dm1 = [ h(3:m-1); 0]; %prima sottodiagonale della matrice
T = spdiags ( [dm1 d0 d1], [-1 0 1], m-2, m-2); %ordine m-2
b = ( ( y(2:m-1) - y(1:m-2) ) ./ h(1:m-2) ) .* h(2:m-1) + ( ( y(3:m) - y(2:m-1) ) ./ h(2:m-1) ) .* h(1:m-2);
b = 3* b;
b(1) = b(1) - z0 * h(2);
b(m-2) = b(m-2) - zf * h(m-2);
z = T \ b; %risoluzione di un sistema triangolare
z = [z0;z;zf];
C = zeros(m-1, 4);
C(:,4) = y(1:m-1); %coeff. del termine costante
C(:,2) = z(1:m-1); %coeff. di x - x_i
C(:,1) = ( z(2:m) + z(1:m-1) - 2*( y(2:m) - y(1:m-1) ) ./ h(1:m-1) ) ./ h(1:m-1) .^ 2; %coeff. di (x - x_i) ^3
C(:,2) = ( ( y(2:m) - y(1:m-1) ) ./ h(1:m-1) - z(1:m-1) ) ./ h(1:m-1) - C(:,1) .* h(1:m-1); %coeff. di (x - x_i)^2
end


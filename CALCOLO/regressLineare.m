function [a, res, r] = regressLineare(A, y)
% A matrice di regressione lineare
% y dati osservati
%
[m, n] = size(A);
[Q, R] = qr(A);
ytilde = Q' * y;
a = R(1:n, 1:n) \ ytilde(1:n);
r = Q * [zeros(n,1); ytilde(n+1 : m)]; % residuo: r = y - A*a
res = norm(r,2)^2; % res = norm(ytilde(n+1:m),2)^2;
end
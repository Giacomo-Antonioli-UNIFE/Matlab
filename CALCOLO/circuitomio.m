% CIRCUITOELETTRICO - Calcolo potenziali elettrici in un circuito
close all
clear all
axisFontSize = 16;
%
% Costruzione della matrice sparsa per diagonali
%
d0 = [11 17 3 3 11 9]';
n = length(d0);
d1 = [0 -2 -6 -1 -2 -1]';
d_1 = [-2 -2 -1 -4 -1 0]';
A= spdiags([d_1,d0,d1], [-1 0 1], n, n);
A(1,n)= -6;
A(n,1)= -4;
A(2,n-1) = -9;
A(n-1,2) = -6;
b= sparse(n,1);
b(1) = 120;
%
% Costruzione del grafo associato
%
t = linspace(0, 2*pi, n+1)';
xy = [cos(t(1:n)) sin(t(1:n))];

gplot(A, xy);
axis([-1.5 1.5 -1.5 1.5]);
xy = 1.05 * xy;
axis equal
title('Grafo associato alla matrice A');
th = text(xy(:,1), xy(:,2), int2str([1:n]'));
set(th,'FontSize',axisFontSize,'HorizontalAlignment','center');
set(gca,'FontSize',axisFontSize);
pause
%
% Risoluzione del sistema mediante il metodo di Gauss
%
[L, R] = gauss1( full(A) );
x= R \ ( L \ full(b) );
ij= find(L);
nnulli = numel(ij);
ij= find(R);
nnulli = nnulli + length(ij);
fprintf('\nSoluzione ottenuta con il metodo di Gauss:');
fprintf('\n%g',x);
fprintf('\nNumero di elementi non nulli di L e R = %g \n', nnulli);
figure;
subplot(2,2,1); spy(A); title('struttura di A');
subplot(2,2,2); spy(L); title('struttura di L');

subplot(2,2,3); spy(R); title('struttura di R');
pause
%
% Risoluzione del sistema mediante il metodo di Jacobi
%
xJacobi= sparse(n, 1);
[xJacobi, itJ] = jacobi(A, b, xJacobi, 500, 1e-6);
fprintf('\nSoluzione ottenuta con il metodo di Jacobi:');
fprintf('\n%g', full( xJacobi));
fprintf('\nNumero di iterazioni: itJ = %g \n', itJ);
pause
%
% Risoluzione del sistema mediante il metodo di Gauss-Seidel
%
xG = sparse(n, 1);
[xGS, itGS] = gaussSeidel(A, b, xGS, 500, 1e-6);
fprintf('\nSoluzione ottenuta con il metodo di Gauss-Seidel:');
fprintf('\n%g', full(xGS));
fprintf('\nNumero di iterazioni: itGS = %g \n', itGS);
pause

m = 5;

omega = linspace(0.5, 1.9, m);
for i = 1 : m
xSOR= sparse(n,1);
[xSOR, itSOR(i)] = sor(A, b, xSOR, 500, 1e-6, omega(i));
fprintf('\nSoluzione ottenuta con il metodo SOR, omega = %g:', 
omega(i));
fprintf('\n%g', full(xSOR));
fprintf('\nNumero di iterazioni: itSOR(%d) = %g \n', i, itSOR(i));
pause
end


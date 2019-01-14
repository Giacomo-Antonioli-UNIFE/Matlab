clc
clear all

n = 3;
d= [1:n].^2;
d=d';
vunder= 0.5.*exp([1:n]/n);
vupper= 0.5.*exp([2:n+1]/n);
vunder=vunder';
vupper=vupper';
A=spdiags([vupper d vunder], -1:1, n ,n )

J = (diag(1./d)) * (-tril(A,-1) - triu(A,1))

rhoJ=max(abs(eig(J)))

G= inv((diag(d)) - (-tril(A,-1))) * (-triu(A,1))

rhoG=max(abs(eig(G)))

velj=-log(rhoJ)
velG=-log(rhoG)
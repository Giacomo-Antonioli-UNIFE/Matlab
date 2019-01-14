clear all
close all
% esercizio 2
n=input('n=');
A=hilb(n);
sol=(1:n)';
b=A*sol
[R,p]=chol(A);
if p~=0 
    error('problemi sulla matrice\n');
else
y=sollower(R',b);
x=solupper(R,y);
fprintf('x=%g\n',x);
%%%%%%%%%%%%%
err=norm(sol-x,inf)/norm(sol,inf);
fprintf('err rel=%g\n',err);
r=b-A*x;
fprintf('residuo normalizzato=%g\n',norm(r,inf)/norm(b,inf));
%%%%%%%%
% stima del numero di condizione
y=sollower(R',r);
e=solupper(R,y);
stimainvA=norm(e,inf)/norm(r,inf);
stimaka=norm(A,inf)*stimainvA;
fprintf('stima del numero di condizione=%g\n',stimaka);
end
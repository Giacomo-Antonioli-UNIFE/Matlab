clc
clear all
close all

n = input('inserire dimensione sistema: ');
A = hilb(n);
x = [1:n]';
b = A*x;

R = chol(A);
L = R';

w = solupper(R,sollower(L,b));

err = norm((x-w),'inf');

normerr = err / norm(x,'inf')

r=b-A*w
y=sollower(L,r);
e=solupper(R,y);
stimainvA=norm(erre,inf)/norm(r,inf);
stimaka=norm(A,inf)*stimainvA;
fprintf('stima del numero di condizione=%g\n',stimaka);






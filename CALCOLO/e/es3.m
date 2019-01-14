A= [3 0 5;  7 1 2; 1 3 1];
b=[13;11;3];
[L,R,P]=gauss2(A);


bnew= b(P)
y=sollower(L,bnew);
x=solupper(R,y);

r=A*x-b
norm(r,'inf')/norm(b,'inf')



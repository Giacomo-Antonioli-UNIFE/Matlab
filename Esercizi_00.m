clear;
clc;
%esercizio 1
v= 1:6;
w=1:6;
v=v';
w=w';
%A
a= v+w;
%B
b=4*v;
%C
c=v.*w;
%D
d=v/2;
%E
e=v./w;
%F
f=dot(v,w);
%G
g=2*v-6*w;
%H
h=zeros(size(w));
h(1:2:end)=c(1:2:end);
h(2:2:end)=d(2:2:end);
%I
i=[v,v,v,v,v];
%J
i([6:6:end]);
i([5:5:end])=0;
i([6:6:end])=1;
%disp(i);
%L
u=1:6;
disp(u*w);
disp(w*u);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Esercizio2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%x=input('Inserire n: ');
clear;
x=5;
matrix=rand(x,x);
%matrix=[(1:1:5);(1:1:5);(1:1:5);(1:1:5);(1:1:5)];
disp(matrix);
vector=zeros(1,x);%Creazione vettore nullo
vector=sum(matrix);%di defualt sum somma le colonne della matrice elemento per elemento
disp(vector);
vector=sum(matrix');%trasposta per sfruttare il trucchetto
disp(vector);
matrixquad=matrix.*matrix;%elevo al quadrato
vector=sum(matrixquad');%somma quadrati righe
disp(vector);
vector=sum(matrixquad);%somma quadrati colonne
disp(vector);
disp(max(max(matrix)));
disp(sum(sum(matrix)));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Esercizio3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;
v=rand(25,1);
w=rand(25,1);
%A
t=dot(v,w)*v+dot(v,w)*w;
%disp(t);
%B
s=1:25;
s=s';
p=t./s;
%disp(p);
%C
A=rand(3,25);
q=A*p;
%disp(q);
%D
I=eye(3);
e1=I(:,1);
e2=I(:,2);
e3=I(:,3);
a1=dot(q,e1);
a2=dot(q,e2);
a3=dot(q,e3);
%E
a= [a1; a2; a3];
a==q;
%F
b=fix(t(2:2:end)*10);
%G
c=[1,2,3];
%D=c.*b';
B=[q,q,q];
%A*B
B*A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Esercizio4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;
%%%%Dimostrazioni
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Esercizio5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;
%A
A=rand(5,5)
v=A(2,:);
%B
w=A(:,3);
%C
B=A(3:end,3:end)
%D
C = zeros(7,7);
C([1,7],:) = 1;
C(2:6,2:6) = A;
%E
D=zeros(3,3)
for i=1:3
    for j=1:3
        D(i,j)=i*j;
    end
end
D==D'

B*D
D*B%Sono diversi

B.*D%No, non equivale ne a D*B ne a B*D

%H
E=B*D^2-3*B*D-7*D^2

%I
D'*B'==(B*D)'
%J
Dw1=D*w(1:3)
%K
v1D=v(1:3)*D
%L
MATRIX=[eye(3), B, zeros(3)
        B, D, -B
        zeros(3), -B, -eye(3)    ]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Esercizio6
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;
x=(1:10);
prova=x.*x

MATRIC=zeros(10)
MATRIC=repmat(prova,10,1)



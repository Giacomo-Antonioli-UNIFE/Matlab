%paramtrizzo a e b
%parametrizzo i punti o il passo?
%Fissando h non è detto che ci stia un numero intero di volte in b-a,
%meglio fissare il numero dei punti e ricavare h perchè ho la certezza che
%sia presente un numero finito di volte

a=0;
b=1;
passo=1000;%numero intervalli

f = @(x)(-exp(1).^x.*(1-x) + (16*(pi.^2+x)) .* sin(4*(pi)*x));%Buona norma scrivere così
y = @(x)(exp(1).^x + sin(4*(pi)*x));

x=linspace(a,b,passo)';
h=(b-a)/passo;

D1 = -(ones(passo,1));%son sicuro che sia una sola colonna
D = h^2 .* x +2;

A = spdiags([D1,D,D1],[-1,0,1],passo,passo );

%Sarebbe meglio moltiplicare h^2 ad entrambe i membri per h^2 perchè h è
%piccolo ed è cosnigliabile dividere per un numero piccolo
b=(h*h) * f(x)%In questo caso a e b sono zero quindi li posso non scrivere




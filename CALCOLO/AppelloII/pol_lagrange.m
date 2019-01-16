 function [p,coeff]=pol_lagrange(x,y,punti);
 % x: vettore dei nodi o punti di osservazione
 % y: vettore delle osservazioni
 % punti: punti in cui calcolare il polinomio di Lagrange
 %
 n1=length(y); coeff=zeros(size(x)); p=zeros(size(punti));
 for i=1:n1
     coeff(i)=y(i)/prod(x(i)-x([1:i-1,i+1:n1]));
 end;
 for k=1:length(punti)
     ij=find(punti(k)==x);
     if isempty(ij)
         % calcolo del polinomio di Lagrange
         temp=prod(punti(k)-x); %
         p(k)=temp*sum(coeff./(punti(k)-x));
     else
         p(k)=y(ij(1));
     end;
 end;


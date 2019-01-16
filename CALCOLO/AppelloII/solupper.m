 function x = solupper(r,b);
 % orientato per righe
 n = length(b);
 x = b;
 x(n) = x(n)/r(n,n);
 for i = n-1:-1:1
 % SDOT
     x(i) = x(i)-r(i,i+1:n)*x(i+1:n);
     x(i) = x(i)/r(i,i);
 end;


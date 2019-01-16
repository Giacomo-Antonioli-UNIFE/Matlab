 function x = sollower(l,b);
 % orientato per righe
 n = length(l);
 x = b;
 x(1) = x(1)/l(1,1);
 for i = 2:n
 %SDOT
     x(i) = x(i)-l(i,1:i-1)*x(1:i-1);
     x(i) =x(i)/l(i,i);
 end;


 function [x,k]=sor(A,b,x, maxit,tol,omega);
 % metodo di sor - Gauss Seidell estrapolato
 n = max(size(A));

 for k=1:maxit
     xtemp=x;
     for i=1:n
         x(i)= (-A(i,[1:i-1, i+1:n])*x([1:i-1, i+1:n])+b(i))/A(i,i);
         x(i)=(1-omega)*xtemp(i)+omega*x(i);
     end;


     if norm(xtemp-x,inf)<tol*norm(x,inf)

         break;
     end;
 end;
 if k == maxit
     fprintf('convergenza non raggiunta\n');
 end;


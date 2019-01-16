 function [x,it]=bisez(fname,a,b,tol,maxit);

 fa = feval(fname,a);
 fb = feval(fname,b);
 if sign(fa)*sign(fb) >=0
     error('intervallo non corretto');
 else
     % bisezione
     it = 0;
     while abs(b-a)>tol+eps*max([abs(a) abs(b)]) & it<=maxit
         it = it+1;
         pm = a+(b-a)*0.5;
         %fprintf('it=%g x=%g\n',it,pm);
         fpm = feval(fname,pm);
         if fpm == 0
             break;
         end;
         if sign(fpm)*sign(fa) >0
             a  = pm;
             fa = fpm;
         else
             b  = pm;
             fb = fpm;
         end;
     end;
     if it>maxit
         error('Raggiunto max limite di iterazioni');
     else
         x = pm;
     end;
 end;

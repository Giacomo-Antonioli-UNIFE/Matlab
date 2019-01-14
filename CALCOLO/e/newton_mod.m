function [x,it]=newton_mod(fname,fpname,x0,tolx,tolf,maxit,p);
% metodo di Newton
x=x0;fx=feval(fname,x);


for it=1:maxit
   d=fx/feval(fpname,x);
   x=x-p*d;
   fx=feval(fname,x);
 
   if (abs(fx)<tolf & abs(d)<tolx+eps*abs(x))| fx==0
     break;
   end;
end;   
if it>=maxit
    fprintf('raggiunto massimo numero di iterate \n');
end;


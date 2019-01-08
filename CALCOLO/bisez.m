function [xvect,it] = bisez(a,b,tol,fun)
%BISEZ Summary of this function goes here
%-gli estremi a e b dell’intervallo di ricerca;
%– la tolleranza tol richiesta sul residuo;
%– la funzione fun definita come anonymous functions (@);
%– il vettore xvect delle iterate;
%– il numero it delle iterazioni eseguite.
if(sign(fun(a))~=sign(fun(b)))
error("CONDIZIONI DI WEIERSTRASS NON RISPETTATE");
end
it=0;

fa=fun(a);
signa=sing(fa);

fb=fun(b);

stop=0;

maxit=log2((b-a)/tol);
c=a+(b-a)/2;
while ~stop
   
fc=fun(c);
segno=sign(fc);
if segno==0
    stop=1;
elseif segno==1
    if signa==segno
        fa=xc;
    else
        fb=xc;
    end
elseif segno==-1
        if signa==segno
        fa=xc;
    else
        fb=xc;
        end
end  

stop=



end





end

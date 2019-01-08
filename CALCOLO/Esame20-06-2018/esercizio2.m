function [z,time] = esercizio2(xx,r,t)
%ESERCIZIO2 Summary of this function goes here
%xx vector
%r scalare diverso da 0
%t scalare diverso da 0
%
%z vector calculated parameters
if(r==0)% oppure if(~r)
    error('Il parametro r deve essere diverso da 0.');
end
if(t==0)
    error('Il parametro t deve essere diverso da 0.');
end
if(isempty(xx))
    error('Inserire un vettore non vuoto');
end
N=1000;

xx=xx(:);%Mi garantisce che tutto ciò che inserisco sia un vettore

fun= @(x) (r*sin(x+1))./(cos(x-t)+1);
z=zeros(numel(xx),1);
tic;
for i=0:1:N
z= fun(xx);
end
time=toc/N;

end


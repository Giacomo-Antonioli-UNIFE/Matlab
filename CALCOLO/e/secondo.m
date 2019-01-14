function [st]=secondo(n,b,k);
%
% algoritmo delle moltiplicazioni successive
%
cifre=['0','1','2','3','4','5','6','7','8','9',...
    'A','B','C','D','E','F'];
if b<=16
    p=n; st='.';cont=0;
while p~=0 & cont<k
   q=p*b;
   r=fix(q);
   st=[st,cifre(r+1)];
   p=q-r;cont=cont+1;
end;
else
    error('base non consentita');
end;


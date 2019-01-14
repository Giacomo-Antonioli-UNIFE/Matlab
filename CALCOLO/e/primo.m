function [st]=primo(n,b);
%
% algoritmo delle divisioni successive
%
if b<=16 
cifre=['0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'];
d=n; st='';
while d~=0
   q=fix(d/b);
   r=rem(d,b);
   st=[cifre(r+1),st];
   d=q;
end;
else
    error('base non consentita');
end;
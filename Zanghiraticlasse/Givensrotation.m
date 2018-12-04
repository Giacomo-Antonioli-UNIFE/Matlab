function [c,s] = Givensrotation(x)
%GIVENS Summary of this function goes here
%   Detailed explanation goes here
% x vettore colonna di due elementi
if(abs(x(1))<abs(x(2)))
t=x(1)/x(2);
s=1/sqrt(1+t.^2);
c=t*s;
else
t=x(2)/x(1);
c=1/sqrt(1+t.^2);
s=t*c;
end

end




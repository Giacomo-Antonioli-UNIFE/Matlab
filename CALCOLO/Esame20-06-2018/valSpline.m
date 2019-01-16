function [yy] = valSpline(C,x,xx)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
x=x(:); xx=xx(:); m=size(C,1); yy=zeros(size(xx));
for i=1:length(xx)
    if (xx(i)<x(1) || xx(i) > x(end) )
        error ('xx(%d) esterno all''intervallo',i);
    end
    if (xx(i) == x(end) )
        k=m;
    else
        k=find(x>xx(i), 1 )-1;
    end
    yy(i) = (( C(k,1)*(xx(i)-x(k))+C(k,2)) * (xx(i)-x(k)) + C(k,3)) * (xx(i) - x(k) ) + C(k,4);
end
end


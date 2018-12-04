function [R] = invlower(R)
%ERRORCALC Summary of this function goes here
%   Detailed explanation goes here

disp(R);
if(istril(R))
    if(isempty(find(diag(R)==0)))
        
        [m,n]=size(R);
        R(1,1)=1/R(1,1);
        for i =2:1:n
        R(i,i) = 1/R(i,i);
        for j=1:i-1
            R(i,j)= -(R(i,j:i-1)*R(j:i-1,j))*R(i,i);
        end
        
        end

    else
        fprint("MATRIX IS SINGULAR");
    end
    
else
    fprint("MATRIX IN NOT LOWER TRIANGULAR");
end

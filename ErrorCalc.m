function [EA,ER,EPER] = ErrorCalc(inputArg1,inputArg2)
%ERRORCALC Summary of this function goes here
%   Detailed explanation goes here
EA=abs(inputArg1-inputArg2);
ER=EA/abs(inputArg1);
EPER=ER*100;
end


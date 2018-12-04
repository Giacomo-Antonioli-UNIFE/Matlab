function [] = Esercitazione2_1(x)
%ESERCITAZIONE2_1 Summary of this function goes here
%   Detailed explanation goes here
realsin=sin(x);
approxsin=x-(x^3)/factorial(3)+(x^5)/factorial(5);
realcos=cos(x);
approxcos=1-(x^2)/factorial(2)+(x^4)/factorial(4);
[EASIN,ERSIN,EPERCSIN]=ErrorCalc(realsin,approxsin);
[EACOS,ERCOS,EPERCCOS]=ErrorCalc(realcos,approxcos);
%fprintf('Real sin: %f\tApprox sin: %f \nReal cos: %f\tApprox cos: %f\n',realsin,approxsin,realcos,approxcos);
fprintf('EaSin: %f\tErSin: %f\tE%%Sin: %f%% \n',EASIN,ERSIN,EPERCSIN);
fprintf('EaCos: %f\tErCos: %f\tE%%Cos: %f%% \n',EACOS,ERCOS,EPERCCOS);
end


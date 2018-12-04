function [] = Esercitazione2_5()
%ESERCITAZIONE2_5 Summary of this function goes here
%   Detailed explanation goes here
a=0;
b=1;
%yn=0.25*(1/n -y(n-1))
c(10)=0;
c(1)=1/(4*log(5));
for i=2:1:10

    c(i)=0.25*(1/i -c(i-1));
    
end
c

%%Chiedere per parte 2
end


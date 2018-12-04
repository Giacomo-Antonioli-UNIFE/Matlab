function [] = Esercitazione2_7()
%ESERCITAZIONE2_7 Summary of this function goes here
%   Detailed explanation goes here
F(100)=0;
F(1)=1;
F(2)=1;

for i=3:1:100
   F(i)=F(i-1)+F(i-2); 
end
FS(100)=0;

fprintf("Confronto\n--------\n");
for i=1:1:100
    fiveonone=(1/(sqrt(5)));
    FS(i)=fiveonone*(((1+sqrt(5))/2)^i-((1-sqrt(5))/2)^i);
    fprintf("%.0f)%.0f \t|\t %.0f\n",i,F(i),FS(i));
end
end


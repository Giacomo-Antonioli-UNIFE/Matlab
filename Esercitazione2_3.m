function [] = Esercitazione2_3()
%ESERCITAZIONE2_3 Summary of this function goes here
%   Detailed explanation goes here
clear all;
clc;
figure; 
xlabel('Numero');
ylabel('Eulero');
fprintf('Valore di Yn\n------------\n');
vecii=[];
veci=[];
for ii=10.^(0:2:8)
    yn=1;
    for i=1:ii
        yn=yn+1/i;
    end
    yn=yn-log(ii);
    veci=[veci,yn];
    vecii=[vecii,ii];
    fprintf('Yn: %f\n',yn);
end

    %% Grafici

loglog(vecii,veci,'-x');  % con plot valori "non visualizzabili"
xlabel('Numero');
ylabel('Eulero');
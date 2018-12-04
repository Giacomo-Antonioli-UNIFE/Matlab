function [] = Esercitazione2_2()
%ESERCITAZIONE2_2 Summary of this function goes here
% Calcolo seno iperbolico
%for x=10.^(-6:3)
esponenti = (-6:3)';
x = 10.^esponenti; 
sinhfake=Approxsinh(x);
sinhreal=sinh(x);
    %[EASIN,ERSIN,EPERCSIN]=ErrorCalc(sinhreal,sinhfake);
    %fprintf('EaSin: %f\tErSin: %f\tE%%Sin: %f%% \n',EASIN,ERSIN,EPERCSIN);
    %plot(sinhreal,EASIN);
%end
err_assoluto = abs(sinhfake - sinhreal)
err_relativo = err_assoluto./abs(sinhreal);
for ii = 1:length(x)
  
    fprintf('%4e \t | %4e  | %4e \n',x(ii),err_assoluto(ii),err_relativo(ii));
end
    %% Grafici
figure; 
loglog(x,err_assoluto,'-x');  % con plot valori "non visualizzabili"
hold on;
loglog(x,err_relativo, 'r-x');% con plot valori "non visualizzabili"
xlabel('x');
ylabel('Errore')
legend('Errore assoluto','Errore relativo')
end


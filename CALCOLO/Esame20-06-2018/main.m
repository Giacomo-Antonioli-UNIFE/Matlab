r_es=0.27;
t_es=3;

r_utente=input('Inserire r ');
t_utente=input('Inserire t ');

if r_utente==r_es
 error("Inserire un valore diverso dal quello pre impostato");
end
if t_utente==t_es
 error("Inserire un valore diverso dal quello pre impostato");
end
space=zeros(100,1);
space=linspace(-pi/3,3*pi/3,201);

[y_es,time_es]=esercizio2(space,r_es,t_es);
fprintf("Elapsed time: %f\n",time_es);

[y_us,time_us]=esercizio2(space,r_utente,t_utente);
fprintf("Elapsed time: %f\n",time_es);


figure
semilogy(space,y_es,'-',space,y_us,'--');
legend('Funzione Script', 'Funzione Utente');






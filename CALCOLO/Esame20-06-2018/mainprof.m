disp ('Test esercizio 2') ;
a = -pi /3; b = 2* pi /3;
xx = linspace (a , b , 201)';
%
[ z1 , tempo1 ] = esercizio2( xx , 0.27 , 3 ) ;
fprintf('\nr = %g, t = %g, [a, b] = [%g, %g] :', 0.27 , 3 , a , b ) ;
fprintf('\ntempo medio per 10000 valutazioni = %g secondi ', tempo1 ) ;
%
r = 1.12; t = -2;
[ z2 , tempo2 ] = esercizio2( xx , r , t ) ;
fprintf ('\nr = %g, t = %g, [a, b] = [%g, %g] :', r , t , a , b ) ;
fprintf ('\ntempo medio per 10000 valutazioni = %g secondi ', tempo2 ) ;
%
ph = semilogy ( xx ,[ z1 , z2 ] ,'LineWidth' ,2);
th = title('Valori delle funzioni \phi_{r,t}(x)');
set(th ,'FontSize' ,16) ;
xlabel('Ascisse ') ; ylabel('Valori di \phi_{r,t}(x)') ;
legendStrings={'r = 0.27 , t = 3'; sprintf('r = %g, t = %g', r , t)};
legend(legendStrings ) ;
fprintf('\n\n') ;


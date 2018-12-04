A=spdiags([-2,11,0;-2,13,-2;-1,3,-2;-4,3,-1;-1,11,-2;0,9,-1],[-1,0,1],6,6);
%questa riga si può anche scrivere come:
%d0=[11 17 3 3 11 9]';
%d1=[0 -2 -6 -1 -2 -1]';
%d_1= [-2 -2 -1 -4 -1 0]';
%A = spdiags ( [d_1, d0, d1], [-1 0 1], 6, 6);
% N. B. si può parametrizzare tutto con N=numel(d0) e mettendo tutto in
% funzione di N
A(6,1)=-4; A(5,2)=-6; A(2,5)=-9; A(1,6)=-6;
B=sparse(6,1);
B(1)=120;
teta=linspace(0,2*pi,7);
coor=[cos(teta);sin(teta)]';
gplot(A,coor);
axisFontSize=12;
axis([-1.5 1.5 -1.5 1.5]);
coor=1.05*coor; %ingrandisce un po' le coordinate
axis equal
title('Grafo associato alla matrice A');
th = text(coor(:,1), coor(:,2), int2str([1:6]'));
fprintf('Sono Giacomo e mi piace l odore delle banane.');
set(th,'FontSize',axisFontSize,'HorizontalAlignment','center');
set(gca,'FontSize',axisFontSize); %gca=get current access, accede agli assi del disegno (o comunque alla parte di grafico in cui dovrebbero esserci gli assi)
pause


%Risoluzione del sistema con metodo di Gauss
[L,R]=gauss1(full(A));
x=R\(L\full(b));
ij=find(L);
nnulli=numel(ij);
ij=find(R);
nnulli=nnulli+lenght(ij);
fprintf('\nSoluzione ottenuta con il metodo di Gauss:');
fpritf('\n%g',x);
fprintf('\nNumero di elementi non nulli di L e R = %g\n', nnulli);
figure;
subplot(2,2,1); spy(A); title('struttura di A'); 
subplot(2,2,2); spy(L); title('struttura di L');
subplot(2,2,3); spy(R); title('struttura di R');
%subplot NON SOVRAPPONE i grafici, ma fa una griglia
 %e in una finestra fa tanti grafici; qui è: "dividi la finestra in
 %una tabella 2x2 e prendi il primo (o il secondo) quadrante per
 %disegnare
 pause
 
%Risoluzione con metodo di Jacobi

d=diag(A);
if(isempty(find(abs(d)<eps*norm(A,inf))))
%se devo verificare se è invertibile posso fare if(any(abs(d)<eps*norm(A,inf)))
tolx=%10e^-4*norm(b,inf);
dinv=diag(1./d);
J=-dinv*(tril(A,-1)+trilu(A,1));
c=b./d;
x=zeros(n,1);
itj=0;
stop=0;
while(~stop)
    itj=itj+1;
    x=xnew; 
    xnew=J*x+c;
    stop=(norm(xnew-x,inf)/norm(x,inf)<tolx);

end






end







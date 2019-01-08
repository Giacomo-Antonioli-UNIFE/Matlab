%Es1
x=0:0.25:3;
n=numel(x);
space=linspace(0,3);
grado=3;
y=[6.3806 7.1338 9.1662 11.5545 15.6414 22.7371 32.0696 47.0756 73.1596 111.4684 175.9895 278.5550 446.4441];

A=ones(n,grado);
for i=2:grado+1
    A(:,i)=(A(:,i-1).*(x)');
    %fprintf("CICLO");
end
[a,res,r]=regressLineare(A,y');
disp(a);

a=flipud(a);%MOLTO IMPORTANTE
disp(a);
%%POLIFIT POLIVAL
[P,S]= polyfit(x,y,grado);
fprintf("P\n");
disp(P);
fprintf("S\n");
disp(S);
f = polyval(P,space);
fmia=polyval(a,space);
plot(x,y,'o',space,f,'-',space,fmia,'--')
legend('data','linear fit','regressLinarefir')


%
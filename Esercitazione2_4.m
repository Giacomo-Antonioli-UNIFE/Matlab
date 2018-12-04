function [] = Esercitazione2_4()
%ESERCITAZIONE2_4 Summary of this function goes here
%   Detailed explanation goes here

a=besselj(0,1);
b=besselj(1,1);
c(20)=0;
c(1)=a;
c(2)=b;
    fprintf("Vero: -- | Approx: %f\n",a);
    fprintf("Vero: -- | Approx: %f\n",b);
for ii=3:1:22
    current=ii-2;
    temp=2*current*c(ii-1)-c(ii-2);
    tempreal=besselj(ii-1,1);
    c(ii)=temp;
   fprintf("Faccio: 2*%.0f*%f-%f\n",current,c(ii-1),c(ii-2));
   fprintf("%.0f)Vero: %f | Approx: %f\n",current,tempreal,temp);
end


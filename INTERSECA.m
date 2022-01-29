function [x1,y1, Xi]=INTERSECA(x0, y0, Ix, Iy, r1,k1,t1)

Q1=k1+1; 

%%   Parámetros para la chicharronera
A=Q1*Ix.^2+Iy.^2;
B=-2*Ix.*(  Q1*(t1-x0)+r1  )  + 2*y0.*Iy;
C=2*r1*(t1-x0)+Q1*(t1-x0).^2+y0.^2;


Xi=(-B-sign(r1)*(   B.^2-4*A.*C   ).^(1/2)   )  ./  (2*A);

%% Puntos de intersección  P1
x1=x0+Xi.*Ix;
y1=y0+Xi.*Iy;


end

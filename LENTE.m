function      [Xs,Ys]=LENTE(H, Q1,r1,t1,Q2,r2,t2)
  
            c1=1/r1;
            Ys1=linspace(-H,H,120);
            [n,m]=size(Ys1);
            for i=1:n*m
                 Xs1(i)=t1+c1*Ys1(i)^2/(1+sqrt(1-Q1*c1*c1*Ys1(i)*Ys1(i)));
            end
  
            c2=1/r2;
            Ys2=flip(Ys1);
     
            for i=1:n*m
                 Xs2(i)=t2+c2*Ys2(i)^2/(1+sqrt(1-Q2*c2*c2*Ys2(i)*Ys2(i)));
            end
            
            Xs=horzcat(Xs1,Xs2,Xs1(1));
            Ys=horzcat(Ys1,Ys2,Ys1(1));
            end


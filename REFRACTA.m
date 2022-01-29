function  [Tx,Ty]=REFRACTA(x1, y1, Ix, Iy,k1,r1,t1,n1,n2 ) 
 [mx,my]=size(Ix); 

                 for i=1:my
                     Vi=[Ix(i); Iy(i)];
                     Q1=k1+1;
                     Fx=2*Q1*(x1(i)-t1)-2*r1;   Fy=2*y1(i);
                     Vn=sign(r1)*[Fx; Fy];
                     
                     COi=dot(Vi,-Vn);      SOi=sqrt(1-COi^2);
                     SOt=(n1/n2)*SOi;     COt=sqrt(1-SOt^2);
                     
                     Vt=(n1/n2)*Vi - (COt-(n1/n2)*COi)*Vn; 
                     
                     Tx(i)=Vt(1);
                     Ty(i)=Vt(2);
                 end

end



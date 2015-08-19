function X=objv(P)
a=1;
[n,m]=size(P);
B=[2,6,6,1];
for k=1:n
    for j=1:m-1
      if B(1,j)==0
           t2(k,j,j+1)=0;

       else
            t1=0;
            for i=max(k+1-B(1,j),1):k
                 t1=t1+P(i,j+1);
            end;
       t2(k,j,j+1)=t1;
      end;
    end;
end;

for j=1:m-1
    F(1,j,j+1)=P(1,j+1);
end;
for k=2:n
    for j=1:m-1
        F(k,j,j+1)=max(F(k-1,j,j+1)-P(k,j),0)+P(k,j+1)-max(F(k-1,j,j+1)-t2(k-1,j,j+1),0);
    end;
end; 
t3=0;
for j=1:m-1
   
    t3=t3+F(n,j,j+1);
end; 
T=P(1,1)+t3;
for k=2:n
 
  T=T+P(k,1)+max(F(k,1,2)-t2(k,1,2),0);
end;

S=0;
for j=1:m-1
    S=S+B(1,j);
end;
X=a*T+(1-a)*S;




    
    

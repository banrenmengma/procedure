function [T xulie X] = jisuan2(xulie,P,B,a)
[n,m]=size(P);
D=P;
for s=1:n
   P(s,:)=D(xulie(1,s),:);
end;
    
    T=zeros(n,m);
T(1,1)=0;

for j=2:m
    T(1,j)=T(1,j-1)+P(1,j-1);
end;



for i=2:n
   if (i-B(1,1)-1)<=0
        T(i,1)=T(i-1,1)+P(i-1,1);
    elseif (i-B(1,1)-1)>0
    T(i,1)=max(T(i-1,1)+P(i-1,1),T(i-B(1,1)-1,2));
    end
    for j=2:m-1
        if i<=(B(1,j)+1)
        T(i,j)=max(T(i,j-1)+P(i,j-1),T(i-1,j)+P(i-1,j));
        elseif i>(B(1,j)+1)
        T(i,j)=max(max(T(i,j-1)+P(i,j-1),T(i-1,j)+P(i-1,j)),T(i-B(1,j)-1,j+1));   
    end;
    end;
    T(i,m)=max(T(i,m-1)+P(i,m-1),T(i-1,m)+P(i-1,m));
end
  %{
  for i=(B(1,j)+2):n
         T(i,j)=max(max(T(i,j-1)+P(i,j-1),T(i-1,j)+P(i-1,j)),T(i-B(1,j)-1,j+1));
    end;
    elseif (B(1,j)==0)
     for i=2:n
        T(i,j)=max(max(T(i,j-1)+P(i,j-1),T(i-1,j)+P(i-1,j)),T(i-B(1,j)-1,j+1));
    end;
    elseif (B(1,j)>=n-1)
        for i=2:n
            T(i,j)=max(T(i,j-1)+P(i,j-1),T(i-1,j)+P(i-1,j));
        end;
    end;
   %}



  

    
%B=C;

   


t=T(n,m)+P(n,m);

b=0;
for j=1:m-1
    b=b+B(1,j);
end;

X=a*t+(1-a)*b;
T;

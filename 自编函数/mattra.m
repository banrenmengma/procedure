function P=mattra(t,n)
P =[8,1,6,7,4;9,9,0,0,3;1,9,8,2,7;9,4,9,0,7;6,8,6,0,1;0,1,7,8,4;2,4,7,6,4;5,9,3,3,6;9,7,6,9,7;9,9,1,0,7];

[n,m]=size(P);    

a(1)=fix((t-0.01)/factorial(n-1));
a(2)=fix(((t-0.02)-a(1)*factorial(n-1))/factorial(n-2));

for i=3:n
    p=0;
    for j=1:i-1
        p=p+factorial(n-j)*a(j);
    end;
    a(i)=fix(((t-0.01*i)-p)/factorial(n-i));
end;

%for i=1:n
%    a(i);
%end;

b(1)=a(1)+1;
%[a(1)]
%[b(1)]
for x=2:n
    q=1;
    for k=1:x-1
        if a(x)>=a(k)
            q=q+1;
        end;
    end;
    b(x)=a(x)+q;
    %[b(x)]
    %[a(x)]
end;

for k=1:n
  for i=2:n
    for j=1:i-1
        if b(i)==b(j)
            b(i)=b(i)+1;
        end;      
       end;              
    end;
end;

if (((mod(t,2)==0)&(b(n)>b(n-1)))|((mod(t,2)==1)&(b(n)<b(n-1))))
    k=b(n);
    b(n)=b(n-1);
    b(n-1)=k;
end;

C=P;

    for y=1:n
       P(y,:)=C(b(y),:);
      P(n,:)=P(y,:);
    end;
    
    
    
    
    


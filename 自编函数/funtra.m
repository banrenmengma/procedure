function [A]=funtra(n,t)
%n=input('n=');
%t=input('t=');


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
    
    
for y=1:n
    A(1,y)=b(y);
end;
A;



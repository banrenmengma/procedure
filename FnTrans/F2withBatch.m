tau=input('tau=');

% n=input('n=');
% C=round(rand(2,n)*6)+2;

P=[2,6,7,4,5,8,4,5;2,4,6,2,8,3,5,7];
%P=[5,4,3,3,2;5,3,3,7,3];

M=randperm(n);
C=P;
for j=1:n
    P(:,j)=C(:,M==j);
end

[~,n]=size(P);

[P,resPA,resPB,restauA,restauB]=calculate2(P,tau);

figure(1);
for i=1:2
    for j=1:n
        fill([resPA(i,j),resPB(i,j),resPB(i,j),resPA(i,j)],[(-0.5*i-1*(i-1)),(-0.5*i-1*(i-1)),(-0.5*(i-1)-1*(i-1)),(-0.5*(i-1)-1*(i-1))],[0.5,0.5,0.5]);hold on;
    end
end

for i=1:(2-1)
    for j=1:n
        fill([restauA(2*j-1),restauB(2*j-1),restauB(2*j-1),restauA(2*j-1)],[(-1.5*i),(-1.5*i),(-1.5*i+1),(-1.5*i+1)],[0.3,0.3,0.3]);hold on;
        arrows(0.5*(restauA(2*j-1)+restauB(2*j-1)),-(1.5*i-1+0.1),0.8,-180,[0.5*tau,.15,.05,.005]);hold on;
        fill([restauA(2*j),restauB(2*j),restauB(2*j),restauA(2*j)],[(-1.5*i),(-1.5*i),(-1.5*i+1),(-1.5*i+1)],[0.9,0.9,0.9]);hold on;
        arrows(0.5*(restauA(2*j)+restauB(2*j)),-(1.5*i-1+0.9),0.8,0,[0.5*tau,.15,.05,.005]);hold on;
    end
end

cmax=resPB(2,n)
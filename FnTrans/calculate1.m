 function [P,resPA,resPB,restauA,restauB]=calculate1(P,tau)

[~,n]=size(P);
resPA=zeros(2,n);
resPB=zeros(2,n);

resPA(1,1)=0;
resPB(1,1)=P(1,1);

for j=2:n
    resPA(1,j)=resPB(1,j-1);
    resPB(1,j)=resPA(1,j)+P(1,j);
end

restauA(1)=resPB(1,1);
restauB(1)=restauA(1,1)+tau;
restauA(2)=restauB(1);
restauB(2)=restauA(2)+tau;

resPA(2,1)=restauB(1);
resPB(2,1)=resPA(2,1)+P(2,1);

for j=2:n
    restauA(2*j-1)=max(resPB(1,j),restauB(2*j-2));
    restauB(2*j-1)=restauA(2*j-1)+tau;
    restauA(2*j)=restauB(2*j-1);
    restauB(2*j)=restauA(2*j)+tau;
    resPA(2,j)=max(resPB(2,j-1),restauB(2*j-1));
    resPB(2,j)=resPA(2,j)+P(2,j);
end

end
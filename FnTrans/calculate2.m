function [P,resPA,resPB,restauA,restauB]=calculate2(P,tau)

%P=[2,6,7,4,5,8,4,5;2,4,6,2,8,3,5,7];
%P=[5,4,3,3,2,5,3,5;5,3,3,7,3,4,7,4];
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

position(1)=1;
for j=2:n
    temp=resPB(1,:)-restauB(2*(j-1));
    position(j)=length(find(temp<=0));
    
    if position(j)-position(j-1)>1
        tempA=P(2,(position(j-1)+1):position(j));
        P(2,(position(j-1)+1):position(j))=sort(tempA,'descend');
    end
    
    restauA(2*j-1)=max(resPB(1,j),restauB(2*j-2));
    restauB(2*j-1)=restauA(2*j-1)+tau;
    restauA(2*j)=restauB(2*j-1);
    restauB(2*j)=restauA(2*j)+tau;
    resPA(2,j)=max(resPB(2,j-1),restauB(2*j-1));
    resPB(2,j)=resPA(2,j)+P(2,j);
     
end

end
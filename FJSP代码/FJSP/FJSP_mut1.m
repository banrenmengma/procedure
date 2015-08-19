function [newchrom]=FJSP_mut1(chromP,nind,mutr)
newchrom=chromP;
[~,n]=size(chromP);

for i=1:nind
    a=rand;
    if a>mutr
         pos1=unidrnd(n-1);
         
         s=chromP(i,:);
         
         temp1=s(1:pos1);
         temp2=s(pos1+1:n);
         temp3=fliplr(temp1);
         temp4=fliplr(temp2);
         
         s=cat(2,temp3,temp2);
         
         newchrom(i,:)=s;
    end
end
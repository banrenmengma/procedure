function [newchrom]=FJSP_mut2(chrom,nind,mutr,alldata,SubtaskNum)
newchrom=chrom;
[~,n]=size(chrom);
n=n/2;

for i=1:nind
    a=rand;
    if a<mutr
         pos1=unidrnd(n-1);
         pos2=unidrnd(n);
         
         s=chrom(i,1:n);
         t=chrom(i,n+1:2*n);
         t=M_tran1(s,t,SubtaskNum);
         
         temp5=numel(alldata{pos2+1,5});
         temp6=round(rand(1,1)*(temp5-1))+1;
         t(pos2)=alldata{pos2+1,5}(temp6);
         
         temp1=s(1:pos1);
         temp2=s(pos1+1:n);
         temp3=fliplr(temp1);
       %  temp4=fliplr(temp2);
               
         s=cat(2,temp3,temp2);
         t=M_tran2(s,t,SubtaskNum);
        
         newchrom(i,:)=[s,t];
    end
end
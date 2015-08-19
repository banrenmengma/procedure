function newchrom= bianyi3( chrom,nind,mutr,m,n )
newchrom=chrom;

for i=1:nind
    a=rand;
    if a>mutr
        pos1=unidrnd(n);
        pos2=unidrnd(n);
%        pos3=unidrnd(m-1)+n;
%        pos4=unidrnd(m-1)+n;
        
        while pos1==pos2
            pos2=unidrnd(n);
        end
%{        
        while pos3==pos4
            pos4=unidrnd(m-1)+n;
        end
%}        
        s=chrom(i,:);
        
        temp1=s(pos1);
        s(pos1)=s(pos2);
        s(pos2)=temp1;
%{        
        temp2=s(pos3);
        s(pos3)=s(pos4);
        s(pos4)=temp2;
%}        
        newchrom(i,:)=s;
    end
        

end
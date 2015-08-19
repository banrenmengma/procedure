function newchrom=TSM(chrom,nind,mutr,m,n,C,P,a )
newchrom=chrom;

for i=1:nind
    pm=rand;
    if pm<mutr
       s=chrom(i,:);
       [ss]=TSM1(s,m,n,C,P,a);
        newchrom(i,:)=ss;
    end;
end;

function [cou,objective]=xxsnd(chrom,nind,m,n,C,P,a)
[objective F G]=objv1(chrom,nind,m,n,C,P,a);
for i=1:nind
    cou(i)=100./objective(i);
end
    
function [objective F G] = objv1(chrom,nind,m,n,C,P,a )

T=chrom(1,1:n);
    B=chrom(1,n+1:n+m-1);
     for s=1:n
    P(s,:)=C(T(1,s),:);
     end;
   [Z objective(1,1)]=jisuan(P,B,a);
   w=objective(1,1);
   F=chrom(1,:);
   G=Z;
   P=C;
   
for r=2:nind
    T=chrom(r,1:n);
    B=chrom(r,n+1:n+m-1);
     for s=1:n
    P(s,:)=C(T(1,s),:);
     end;
   [Z objective(r,1)]=jisuan(P,B,a);
   if objective(r,1)<w
       G=Z;
       F=chrom(r,:);
       w=objective(r,1);
   end
     P=C;
end;


end


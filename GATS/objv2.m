function [Z objective] = objv2(ochrom,m,n,C,P,a )

E=ochrom(1,1:n);
    B=ochrom(1,n+1:n+m-1);   
     for s=1:n
    P(s,:)=C(E(1,s),:);
     end;
   [Z objective]=jisuan(P,B,a);
   Z;
  % w=objective;
  % F=ochrom(1,:);
  % G=Z;
  % P=C;
function newchrom = jiaocha4(chrom,nind,xovr,m,n,C,P,a)

newchrom=chrom;

selnum=randperm(nind);

num=2*fix(nind/2);

[objective F G] = objv1(chrom,nind,m,n,C,P,a );
minimum=min(objective);

for i=1:2:num
    p=rand;
    if xovr>p
         pos1=unidrnd(n);
         pos2=unidrnd(n);
         pos3=unidrnd(n);
         pos4=unidrnd(n);
         pos5=unidrnd(m-1)+n;
         
         while pos1==pos2      
         pos2=unidrnd(n);
         end;
         
         if pos1>pos2   
     temp=pos1;
     pos1=pos2;
     pos2=temp;
         end;
 
  while pos3==pos4      
 pos3=unidrnd(n);
  end; 
 
 if pos3>pos4   
     temp=pos3;
     pos3=pos4;
     pos4=temp;
 end;

   s1=chrom(selnum(i),:);
   s2=chrom(selnum(i+1),:);
   
   s11=zeros(1,n+m-1);
   s22=zeros(1,n+m-1);
   
   for j=pos1:pos2       
     s11(j)=s1(j);
   end;
   
    for j=pos3:pos4       
      s22(j)=s2(j);
    end;
    
    for j=1:n     
     flag=ismember(s2(j),s11);  
      if flag==0
          k=1;
          while k<=n
              if s11(k)==0
                 s11(k)=s2(j);
                 k=n+1;
              end
             k=k+1;
         end
      end        
   end
   

   for j=1:n   
     flag=ismember(s1(j),s22);  
      if flag==0
          k=1;
          while k<=n
              if s22(k)==0
                 s22(k)=s1(j);
                 k=n+1;
              end
             k=k+1;
         end
      end        
   end
   
   for j=n+1:n+m-1
       s11(j)=s1(j);
       s22(j)=s2(j);
   end
   
   [Z objective1] = objv2(s11,m,n,C,P,a );
   if objective1<=minimum
       [shunxu1]=TSR(s11,m,n,C,P,a);
       newchrom(selnum(i),:)=shunxu1;
   else
       newchrom(selnum(i),:)=s11;
   end;
   
   [Z objective2]=objv2(s22,m,n,C,P,a);
   if objective2<=minimum
       [shunxu2]=TSR(s22,m,n,C,P,a);
       newchrom(selnum(i+1),:)=shunxu2;
   else
      newchrom(selnum(i+1),:)=s22;
   end;
    
    end;        
end;



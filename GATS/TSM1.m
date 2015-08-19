function [Schrom]=TSM1(ochrom,m,n,C,P,a)

N=n;
T=N*20;
tabulength=5+N;
runcount=0;

[Z objective] = objv2(ochrom,m,n,C,P,a );
candidate_now.xulie=ochrom;
candidate_now.value=objective;

for i=1:tabulength
    tabulist(i).change=[0,0];
    tabulist(i).xulie=0;
    tabulist(i).value=0;
end;

best_so_far.xulie=candidate_now.xulie;
best_so_far.value=candidate_now.value;

while runcount<T
    runcount=runcount+1;
    kk=1;
    Pm=rand;
    for i=max(1,fix(Pm*(n-1)-5)):min(n-1,fix(Pm*(n-1)+5))
        for j=i+1:min(n,i+10)
            flag= true;
            for k= 1:tabulength
                tempflag= sum(abs(tabulist(k).change-[i, j]));
                flag= flag & tempflag;
            end;
            if flag
            temp=cat(1,candidate_now.xulie);
                t= temp(i);
                temp(i)= temp(j);
                temp(j)= t;
                neighborhood(kk).xulie=temp;
                neighborhood(kk).change=[i,j];
                kk=kk+1;
            end;
        end;
    end;
  L=length(neighborhood);
  
  for i=1:L
      [Z objective]=objv2(neighborhood(i).xulie,m,n,C,P,a);
      neighborhood(i).value=objective;
  end;
  
  candidate_next= sort(cat(1, neighborhood.value), 1);
  if candidate_next(1)<best_so_far.value
      index= find(cat(1, neighborhood.value)==candidate_next(1));
      L= length(index);
      if L>1
          candidate_now.xulie= neighborhood(index(L)).xulie;
          candidate_now.change= neighborhood(index(L)).change;
      else
          candidate_now.xulie= neighborhood(index(1)).xulie;
          candidate_now.change= neighborhood(index(L)).change;
      end;
      candidate_now.value= candidate_next(1);
      
      for i= tabulength-1:-1:1
          tabulist(i+1).change= tabulist(i).change;
          tabulist(i+1).xulie= tabulist(i).xulie;
          tabulist(i+1).value= tabulist(i).value;
      end;
      tabulist(1).change= candidate_now.change;
      tabulist(1).xulie= candidate_now.xulie;
      tabulist(1).value= candidate_now.value;
      
      best_so_far.xulie= candidate_now.xulie;
      best_so_far.value= candidate_now.value;
      
  else
      for k=1:10
          index= find(cat(1, neighborhood.value)==candidate_next(k));
          tx= neighborhood(index(1)).xulie;
          tc= neighborhood(index(1)).change;
          
          flag=true;
          for i=2:tabulength
              flag=flag & sum(abs(tc - tabulist(i).change))>0;
          end;
          
          if flag
              candidate_now.xulie= tx;
              candidate_now.change= tc;
              candidate_now.value= candidate_next(k);
              
              for i= tabulength-1:-1:1
                  tabulist(i+1).change=tabulist(i).change;
                  tabulist(i+1).xulie= tabulist(i).xulie;
                  tabulist(i+1).value= tabulist(i).value;
              end;
              
              tabulist(1).change= candidate_now.change;
              tabulist(1).xulie= candidate_now.xulie;
              tabulist(1).value= candidate_now.value;
              
              break;
          end;
      end;
  end;
  
  clear neighborhood
end;

Schrom=best_so_far.xulie;
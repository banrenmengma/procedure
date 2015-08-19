function [Nchrom]=TSR(ochrom,m,n,C,P,a)

N=10;
T=N*3;                 %搜索步数
tabulength=5+N;        %禁忌表长度
runcount=0;            %计数器

[Z objective] = objv2(ochrom,m,n,C,P,a );
candidate_now.xulie=ochrom;
candidate_now.value=objective;

%====初始化禁忌表
for i=1:tabulength                
    tabulist(i).change=[0,0];
    tabulist(i).xulie=0;
    tabulist(i).value=0;
end;

%===当前最优解
best_so_far.xulie=candidate_now.xulie;
best_so_far.value=candidate_now.value;

%===确定领域
while runcount<T
    runcount=runcount+1;
    kk=1;
    for i=1:n-1
        for j=i+1:n
            temp=cat(1,candidate_now.xulie);
            %===交换工件作为一次移动
                t= temp(i);
                temp(i)= temp(j);
                temp(j)= t;
                
                neighborhood(kk).xulie=temp;%领域中候选序列
                neighborhood(kk).change=[i,j];
                kk=kk+1;
        end;
    end;
  L=length(neighborhood);
  
  for i=1:L
      [Z objective]=objv2(neighborhood(i).xulie,m,n,C,P,a);
      neighborhood(i).value=objective;%目标值
  end;
  
  
  candidate_next= sort(cat(1, neighborhood.value), 1);%将候选序列排序
  if candidate_next(1)<best_so_far.value              %是否满足特赦准则
      index= find(cat(1, neighborhood.value)==candidate_next(1));
      L= length(index);
      if L>1%是否只有一个最小目标值
          candidate_now.xulie= neighborhood(index(L)).xulie;
          candidate_now.change= neighborhood(index(L)).change;
      else
          candidate_now.xulie= neighborhood(index(1)).xulie;
          candidate_now.change= neighborhood(index(L)).change;
      end;
      candidate_now.value= candidate_next(1);
      %===将对象放入禁忌表
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
   %===不满足特赦准则   
  else
      for k=1:10
          index= find(cat(1, neighborhood.value)==candidate_next(k));
          tx= neighborhood(index(1)).xulie;
          tc= neighborhood(index(1)).change;
          %是否在禁忌表中
          flag=true;
          for i=2:tabulength
              flag=flag & sum(abs(tc - tabulist(i).change))>0;
          end;
          
          if flag
              candidate_now.xulie= tx;
              candidate_now.change= tc;
              candidate_now.value= candidate_next(k);
              %===将对象放入禁忌表
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

Nchrom=best_so_far.xulie;
          
  


    

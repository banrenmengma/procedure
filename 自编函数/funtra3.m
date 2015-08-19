function []=funtra3(n,t)

P =[8,1,6,7,4;9,9,0,0,3;1,9,8,2,7;9,4,9,0,7;6,8,6,0,1;0,1,7,8,4;2,4,7,6,4;5,9,3,3,6;9,7,6,9,7;9,9,1,0,7];



[n,m]=size(P);
n_1=prod(1:n);
allorder_K=zeros(1,n-1);
tic
for allorder_m=1:n_1    %产生n!个排列  
    allorder_flag=zeros(1,n);
    allorder_P=zeros(1,n);
    for allorder_i=1:n-1
        position=n-allorder_K(allorder_i);
        allorder_j=n;
        while(allorder_j>=position)
            if (allorder_flag(allorder_j)==1)
                position=position-1;
            end
            allorder_j=allorder_j-1;
        end
        allorder_P(position)=n+1-allorder_i;
        allorder_flag(position)=1;
    end
    for allorder_i=1:n
        if (allorder_flag(allorder_i)==0)
            allorder_P(allorder_i)=1;
            break;
        end
    end 
    %%%%以下更新K
    for allorder_i=1:n-1
        allorder_K(n-allorder_i)=mod(allorder_K(n-allorder_i)+1,allorder_i+1);            
        if (allorder_K(n-allorder_i)~=0)
            break;
        end
    end
        
    %%%下面,可以引用allorder_P进行相关处理    
    allorder_P
end    
toc
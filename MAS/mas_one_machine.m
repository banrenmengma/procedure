global X P e d n m k  C c TC;
%%
%初始化
n=3;%工件数
m=1;%机器数
TC=20;%时域
X=zeros(n,TC);%完工时间
P=[3 5 8];%加工时间
e=[2 4 9]; %惩罚系数
d=[12 11 15];%初始完工时间
X(1,12)=1;%
X(2,11)=1;
X(3,15)=1;
c=0;
%%
%c=0
%%
%定义惩罚系数

for i=1:n
    for k=1:TC
        C(i,k)=e(i)*abs(k-d(i));
    end;
end;
%%
%确定迭代方向
for k=1:TC
    st_2=0;
    for i=1:n
        for kk=max(k+1,P(i)):min(k+P(i)-1,TC)
            st_2=st_2+X(i,kk);
        end;
        st_2=st_2+X(i,k);
    end;
    direct(k,1)=st_2-1;
end;
%%
%计算初始LR
LR_0=0;
for i=1:n
    for k=P(i):TC
        LR_0=C(i,k)*X(i,k);
    end
end
price_0=zeros(1,TC);
for k=1:TC
    st_2=0;
    for i=1:n
        for kk=max(k+1,P(i)):min(k+P(i)-1,TC)
            st_2=st_2+X(i,kk);
        end;
        st_2=st_2+X(i,k);
    end;
    direct(k)=st_2-1;
    LR_0=LR_0+price_0*direct;
end;
%%
%循环前初始化
price=zeros(1,TC);
LD(1)=0;
count=0;
count_g=0;
%%
%循环体
for c=1:500
    for i=1:TC
        pricetemp(i)=max(0,price(i)+direct(i));
    end;
    pricecell{c}=pricetemp;
    price=cell2mat(pricecell(c));
    
    
    LR=zeros(n,TC);
    X=zeros(n,TC);
    for i=1:n
        for k=P(i):TC
            
            for t=1:TC
                if t==k
                    X(i,k)=1;
                end
            end
            
            LR(i,k)=C(i,k)*X(i,k)+price*(cat(2,zeros(1,k-P(i)),ones(1,P(i)),zeros(1,TC-k)))';
            X=zeros(n,TC);
        end;
        
        position(c,i)=min(find(LR(i,:)==min(LR(i,P(i):TC))));
        LDD(i)=min(LR(i,P(i):TC));
    end;
    LD(c+1)=sum(LDD)-sum(price);
    
    
    
    for i=1:n
        X(i,position(c,i))=1;
    end
    
    
    
    for k=1:TC
        st_2=0;
        for i=1:n
            for kk=max(k+1,P(i)):min(k+P(i)-1,TC)
                st_2=st_2+X(i,kk);
            end;
            st_2=st_2+X(i,k);
        end;
        direct(k)=st_2-1;
    end;
    
    figure(c);
    a={'r','y','g'};
    axis([0 20 0 3]);hold on;
    for i=1:n
        fill([position(c,i),position(c,i),(position(c,i)-P(i)),(position(c,i)-P(i))],[i-0.5,i,i,i-0.5],cell2mat(a(i))),hold on
        text((position(c,i)-P(i)),i-0.25,strcat('工件',num2str(i)));
    end
    
    g(c)=LD(c+1)-LD(c);
    
    if abs(g(c))<0.1
        count_g=count_g+1;
    end;
    if count_g>5
        break;
    end
    
end;

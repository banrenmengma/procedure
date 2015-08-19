function pos1=distribute_pos(P)
len_temp=length(P);
n=1;
summ=0;
p=0;
sumP=0;
temp=sum(P);
for i=1:len_temp
    L(i)=temp/P(i);
end

for i=1:len_temp
    p(i)=L(i)^n/sum(L.^n);
    summ=summ+p(i);
    sumP(i)=summ;
end
select_p=rand;
pos1=find(select_p<sumP , 1 );
end




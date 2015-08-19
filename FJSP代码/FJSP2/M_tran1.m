function M_tran=M_tran1(P,M,SubtaskNum)
M_tran=zeros(1,length(P));
count=zeros(1,max(P));
array=1:max(P);
for i=1:length(P)
    position1=find(P(i)==array);
    count(position1)=count(position1)+1;
    if position1==1
        position2=count(position1);
    else
        position2=sum(SubtaskNum(1:position1-1))+count(position1);
    end
    M_tran(position2)=M(i);
end
end
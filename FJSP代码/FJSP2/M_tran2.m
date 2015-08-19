function M=M_tran2(P,M_tran,SubtaskNum)
M=zeros(1,length(P));
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
    M(i)=M_tran(position2);
end
end
function [M,W]=M_W_generate2(alldata,P,TaskAmo,SubtaskAmo,SubtaskNum)
array=1:TaskAmo;
count2=zeros(1,TaskAmo);

for i=1:SubtaskAmo
    
    position1=find(P(i)==array);
    count2(position1)=count2(position1)+1;
    if position1==1
        position2=count2(position1);
    else
        position2=sum(SubtaskNum(1:position1-1))+count2(position1);
    end
    temp=numel(alldata{position2+1,5});
    position3(position2)=round(rand(1,1)*(temp-1))+1;
    M(i)=alldata{position2+1,5}(position3(position2));
    
end

for j=1:SubtaskAmo
    temp1=alldata{j+1,6};
    temp2=position3(j);
    W(j)=temp1(temp2);
end

end
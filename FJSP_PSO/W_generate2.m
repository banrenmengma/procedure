function W=W_generate2(alldata,SubtaskAmo,TaskAmo,SubtaskNum,P,M)
W=zeros(1,SubtaskAmo);
count2=zeros(1,TaskAmo);
array=1:TaskAmo;
for j=1:SubtaskAmo
    position1=find(P(j)==array);
    count2(position1)=count2(position1)+1;
    if position1==1
        position2=count2(position1);
    else
        position2=sum(SubtaskNum(1:position1-1))+count2(position1);
    end
    
    temp1= M(j)==alldata{position2+1,5};
    W(j)=alldata{position2+1,6}(temp1);
end   
% for j=1:SubtaskAmo
%     temp1=alldata{j+1,6};
%     temp2=p3(j);
%     W(j)=temp1(temp2);
% end
end

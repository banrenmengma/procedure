function M=M_generate3(alldata,P,TaskAmo,SubtaskAmo,SubtaskNum)
position3=zeros(1,SubtaskAmo);
count2=zeros(1,TaskAmo);
array=1:TaskAmo;
for i=1:SubtaskAmo
    
    position1=find(P(i)==array);
    count2(position1)=count2(position1)+1;
    if position1==1
        position2=count2(position1);
    else
        position2=sum(SubtaskNum(1:position1-1))+count2(position1);
    end
    
    position3(position2)=distribute_pos(alldata{position2+1,6});
    M(i)=alldata{position2+1,5}(position3(position2));
    
%     temp=numel(alldata{position2+1,5});  
%     position3(position2)=round(rand(1,1)*(temp-1))+1;
%     M(i)=alldata{position2+1,5}(position3(position2));
    
end
end
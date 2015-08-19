function M=New_M_generate2(alldata,Queue,SubtaskAmo)
for i=1:SubtaskAmo
    temp1=numel(alldata{Queue(i)+1,5});
    temp2=round(rand(1,1)*(temp1-1))+1;
    M(i)=alldata{Queue(i)+1,5}(temp2);
end
end
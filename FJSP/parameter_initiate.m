function [P M w]=parameter_initiate()
[ndata, text, alldata] = xlsread('E:\ËãÀı\MK\Mk02£¡24','¹¤¼şÏä');
[row columns]=size(alldata);
for i=2:row
    for j=1:columns
        if ischar(cell2mat(alldata(i,j)))
            alldata(i,j)={str2num(cell2mat(alldata(i,j)))};
        end
    end
end

TaskAmo=alldata{row,1};
SubtaskAmo=row-1;
SubtaskNum=zeros(1,TaskAmo);
count1=0;
for i=2:row
    if isnumeric(alldata{i,2})
        count1=count1+1;
        SubtaskNum(count1)=alldata{i,2};
    end
end
SubtaskNum
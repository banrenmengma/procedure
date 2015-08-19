function algorithm_test1()

filename={'Mk01£¡36','Mk02£¡24','Mk03£¡204','Mk04£¡48','Mk05£¡168','Mk06£¡33','Mk07£¡133','Mk08£¡523','Mk09£¡299','Mk10£¡165'};
fileaddress=strcat('E:\ËãÀý\MK\',filename(2));

[ndata, text, alldata] = xlsread('E:\ËãÀý\MK\Mk02£¡24','¹¤¼þÏä');
[row columns]=size(alldata);
for i=2:row
    for j=1:columns
        if ischar(cell2mat(alldata(i,j)))
            alldata(i,j)={str2num(cell2mat(alldata(i,j)))};
        end
    end
end

for i=1:6
    count=0;
    for j=2:row
        
        if ismember(i,cell2mat(alldata(j,5)))
            count=count+1;
        end
        
    end
    number(i)=count;
end

for i=1:6
    machine{i}=cell(number(i),3);
end

for i=1:6
    sumtemp=0;
    t=0;
    for j=2:row
        if ismember(i,cell2mat(alldata(j,5)))
            t=t+1;
            machine{i}(t,1)={[cell2mat(alldata(j,1)),cell2mat(alldata(j,3))]};
            temp1=cell2mat(alldata(j,6));
            temp2=find(i==cell2mat(alldata(j,5)));
            machine{i}(t,2)={temp1(temp2)};
            sumtemp=sumtemp+temp1(temp2);
        end
    end
    summ(i)=sumtemp;
    avery(i)=summ(i)/t;
end

for i=1:6
    t=0;
    for j=2:row
        if ismember(i,cell2mat(alldata(j,5)))
            t=t+1;
            temp1=cell2mat(alldata(j,6));
            temp2= i==cell2mat(alldata(j,5));
            temp3=temp1(temp2)/avery(i);
            machine{i}(t,3)={temp3};
        end
    end
end


for i=1:6
    machine{i}=sortrows(machine{i},3);
end




% for i=2:row
%     for j=1:length(cell2mat(alldata(i,5)))
%         k=cell2mat(alldata(i,5));
%         machine{k(j)}(i,1)={[cell2mat(alldata(i,1)),cell2mat(alldata(i,3))]};
%     end
% end






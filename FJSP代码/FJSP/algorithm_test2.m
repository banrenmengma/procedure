function algorithm_test2()
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
    sumtemp=0;
    t=0;
    for j=2:row
        if ismember(i,cell2mat(alldata(j,5)))
            t=t+1;
            temp1=cell2mat(alldata(j,6));
            temp2=find(i==cell2mat(alldata(j,5)));
            sumtemp=sumtemp+temp1(temp2);
        end
    end
    summ(i)=sumtemp;
    avery(i)=summ(i)/t;
end

work=cell(row-1,3);

for j=2:row
    t=0;
    temp2=zeros(1,length(cell2mat(alldata(j,5))));
    temp0=cell2mat(alldata(j,5));
    temp1=cell2mat(alldata(j,6));
    for i=1:6
        
        if ismember(i,cell2mat(alldata(j,5)))
            t=t+1;
            position1=find(cell2mat(alldata(j,5))==i);
            
            temp2(t)=(temp1(position1))/avery(i);
        end
    end
    position2=find(min(temp2)==temp2);
    work(j-1,1)={[cell2mat(alldata(j,1)),cell2mat(alldata(j,3))]};
    work(j-1,2)={temp0(position2)};
    work(j-1,3)={min(temp2)};
end

for i=1:6
    t=0;
    for j=1:row-1
        
        if cell2mat(work(j,2))==i
            t=t+1;
            machine{i}(t,1)={cell2mat(work(j,1))};
            machine{i}(t,2)={cell2mat(work(j,3))};
        end
    end
end





%  cell2mat(machine{1})
% machine{2}
% machine{3}
% machine{4}
% machine{5}
% machine{6}



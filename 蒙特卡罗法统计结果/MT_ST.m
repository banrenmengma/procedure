function []=MT_ST()
Mk10='E:\实验数据\蒙特卡罗法统计结果\Mk10！165';
[~, ~, alldata] = xlsread(Mk10,'Sheet1');
[row, ~]=size(alldata);
for i=2:row-1
    for j=2:3
        if ischar(cell2mat(alldata(i,j)))
            alldata(i,j)={str2num(cell2mat(alldata(i,j)))};
        end
    end
end

runcount=0;
countNum=zeros(1,10000);
while runcount<10000
    sum=0;
    for i=2:row-1
        len_temp=length(alldata{i,2});
        pos_temp=unidrnd(len_temp);
        sum=sum+alldata{i,4+alldata{i,2}(pos_temp)};
    end
    countNum(sum)=countNum(sum)+1;
    runcount=runcount+1;
end

minNum=find(countNum>0, 1 );
maxNum=find(countNum>0, 1, 'last' );
temp=find(countNum>0);
countamo=length(find(countNum>0));
figure(1)
for i=1:countamo
    pos=temp(i);
    plot(pos,countNum(pos),'.');hold on
end
end
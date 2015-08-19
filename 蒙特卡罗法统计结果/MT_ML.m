function []=MT_ML()
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
ml_num=zeros(1,13);
ml_load=zeros(1,13);
maxMachine_load=0;
temp1=zeros(1,10000);
temp2=9999*ones(1,10000);
while runcount<10000
    sum=0;
    ml_load=zeros(1,13);
    for i=2:row-1
        len_temp=length(alldata{i,2});
        pos_temp=unidrnd(len_temp); 
        machine_select=alldata{i,2}(pos_temp);
        ml_num(machine_select)=ml_num(machine_select)+1;
        machine_time=alldata{i,4+machine_select};
        sum=sum+machine_time;
        ml_load(machine_select)= ml_load(machine_select)+machine_time;
    end
    countNum(sum)=countNum(sum)+1;
    runcount=runcount+1;
    maxMachine_load=max(ml_load);
    
    if maxMachine_load>temp1(sum)
        temp1(sum)=maxMachine_load;
    end
    
    if maxMachine_load<temp2(sum)
        temp2(sum)=maxMachine_load;
    end
    
end

minNum=find(countNum>0, 1 );
maxNum=find(countNum>0, 1, 'last' );
temp=find(countNum>0);
countamo=length(find(countNum>0));

figure(1)
for i=1:countamo
    pos=temp(i);
    plot(pos,temp1(pos),'o');hold on
    plot(pos,temp2(pos),'*');hold on
end
end

        
function []=FJSP_GA2()
clc;
tic
Mk01='E:\³ÌÐò´úÂë\FJSP´úÂë\mk\Mk01£¡36';
Mk02='E:\³ÌÐò´úÂë\FJSP´úÂë\mk\Mk02£¡24';
Mk03='E:\³ÌÐò´úÂë\FJSP´úÂë\mk\Mk03£¡204';
Mk04='E:\³ÌÐò´úÂë\FJSP´úÂë\mk\Mk04£¡48';
Mk05='E:\³ÌÐò´úÂë\FJSP´úÂë\mk\Mk05£¡168';
Mk06='E:\³ÌÐò´úÂë\FJSP´úÂë\mk\Mk06£¡33';
Mk07='E:\³ÌÐò´úÂë\FJSP´úÂë\mk\Mk07£¡133';
Mk08='E:\³ÌÐò´úÂë\FJSP´úÂë\mk\Mk08£¡523';
Mk09='E:\³ÌÐò´úÂë\FJSP´úÂë\mk\Mk09£¡299';
Mk10='E:\³ÌÐò´úÂë\FJSP´úÂë\mk\Mk10£¡165';

[~, ~, alldata] = xlsread(Mk01,'¹¤¼þÏä');
[row, columns]=size(alldata);
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
MachineAmo=0;

for i=1:SubtaskAmo
    MachineAmo=max(MachineAmo,max(alldata{i+1,5}));
end

count1=0;
for i=2:row
    if ~isnan(alldata{i,2})
        count1=count1+1;
        SubtaskNum(count1)=alldata{i,2};
    end
end

nind=100;
maxgen=100;
ggap=0.9;
xovr=0.8;
mutr=0.9;
gen=0;

trace=zeros(2,maxgen);
chrom=zeros(nind,2*SubtaskAmo);
P=zeros(1,SubtaskAmo);

for r=1:nind
    for i=1:SubtaskAmo
        P(i)=alldata{i+1,1};
    end
    
    Queue=randperm(numel(P));
    P=P(Queue);
    
    [M,~]=M_generate2(alldata,P,TaskAmo,SubtaskAmo,SubtaskNum);
    chrom(r,:)=[P,M];
end;


[objective,P_temp,M_temp,fit_temp]=FJSP_objv2(alldata,TaskAmo,SubtaskAmo,SubtaskNum,nind,chrom);
P_min=P_temp;
M_min=M_temp;
fit_min=fit_temp;

runcount=zeros(1,maxgen);
flag=0;
while gen<maxgen
    
    fitnv=ranking(objective);
    selch=select('sus',chrom,fitnv,ggap);
    selch=FJSP_lox2(selch,nind*ggap,xovr,SubtaskNum);
    selch=FJSP_mut2(selch,nind*ggap,mutr,alldata,SubtaskNum);
    
    [objectivesel,P_temp,M_temp,fit_temp]=FJSP_objv2(alldata,TaskAmo,SubtaskAmo,SubtaskNum,nind*ggap,selch);
    [chrom,objective]=reins(chrom,selch,1,1,objective,objectivesel);
    
    gen=gen+1;
    
    trace(1,gen)=min(objective);
    trace(2,gen)=sum(objective)/length(objective);
    
    if fit_temp<fit_min
        P_min=P_temp;
        M_min=M_temp;
        fit_min=fit_temp;
        runcount(gen)=1;
    else
        runcount(gen)=0;
    end
    
    if gen>200
        while sum(runcount(gen-20:gen))==0
            flag=1;
            break;
        end
    end
    
    if flag==1
        break;
    end
end;

W_min=W_generate2(alldata,SubtaskAmo,TaskAmo,SubtaskNum,P_min,M_min);
[T,M_min,trace1,trace2,trace3,~]=FJSP_ADV_fitness4(P_min,M_min,W_min);

minXulie=[P_min;M_min;W_min]
minFitness=fit_min

toc

figure(1);
plot(trace(1,1:gen));
hold on;
plot(trace(2,1:gen),'-.');grid;
legend('½âµÄ±ä»¯','ÖÖÈº¾ùÖµµÄ±ä»¯');

figure(2);
colorset1=rand(1,TaskAmo);
colorset2=rand(1,TaskAmo);
[Trow,Tcol]=size(T);
for i=1:Trow
    for j=1:Tcol
        if trace2(i,j)~=0
            fill([T(i,j),T(i,j)+trace1(i,j),T(i,j)+trace1(i,j),T(i,j)],[1*i-0.3,1*i-0.3,1*i+0.3,1*i+0.3],[trace2(i,j)/TaskAmo,0.9*colorset1(trace2(i,j)),0.8*colorset2(trace2(i,j))]);hold on
            text(T(i,j),i,strcat(num2str(trace2(i,j)),',',num2str(trace3(i,j))));
        end
    end
end
end
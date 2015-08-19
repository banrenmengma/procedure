function []=FJSP_PSO()
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

tic
nind=200;
maxgen=100;
w=0.72;
c1=1.79;
c2=1.79;
gen=0;

trace=zeros(2,maxgen);
chrom=zeros(nind,2*SubtaskAmo);
X_process=zeros(1,SubtaskAmo);
chrom_operating=zeros(nind,2*SubtaskAmo);
chrom_temp_P=zeros(nind,SubtaskAmo);
chrom_temp_M=zeros(nind,SubtaskAmo);

% individual_best=zeros(nind,3);
% population_best=zeros(1,3);


for r=1:nind
    for i=1:SubtaskAmo
        X_process(i)=alldata{i+1,1};
    end
    
    Queue=randperm(numel(X_process));
    X_process=X_process(Queue);
    
    X_machine=M_generate3(alldata,X_process,TaskAmo,SubtaskAmo,SubtaskNum);
    chrom(r,:)=[X_process,X_machine];
end;

[objective,chrom_X_P,chrom_X_M,minP,minM,minfit]=FJSP_objv3(alldata,TaskAmo,SubtaskAmo,SubtaskNum,nind,chrom);

individual_best_object=objective;
individual_best_P=chrom_X_P;
individual_best_M=chrom_X_M;

population_best_objective=minfit;
population_best_P=minP;
population_best_M=minM;


while gen<maxgen
    for r=1:nind
        for i=1:SubtaskAmo
            chrom_temp_P(r,i)=w*chrom(r,i)+c1*rand*(individual_best_P(r,i)-chrom(r,i))+c2*rand*(population_best_P(i)-chrom(r,i));
        end
        [~,temp_node]=sort(chrom_temp_P(r,:));
        temp=chrom(r,1:SubtaskAmo);
        chrom(r,1:SubtaskAmo)=temp(temp_node);
        chrom(r,SubtaskAmo+1:2*SubtaskAmo)=M_generate3(alldata,chrom(r,1:SubtaskAmo),TaskAmo,SubtaskAmo,SubtaskNum);
    end
    
    [objective,chrom_X_P,chrom_X_M,minP,minM,minfit]=FJSP_objv3(alldata,TaskAmo,SubtaskAmo,SubtaskNum,nind,chrom);
    
    for r=1:nind
        if objective(r)<individual_best_object(r)
            individual_best_object(r)=objective(r);
            individual_best_P(r,:)=chrom(1:SubtaskAmo);
            individual_best_M(r,:)=chrom(SubtaskAmo+1:2*SubtaskAmo);
        end
    end
    
    if minfit<population_best_objective
        population_best_objective=minfit;
        population_best_P=minP;
        population_best_M=minM;
    end
    
    gen=gen+1;
    
    trace(1,gen)=min(objective);
    trace(2,gen)=sum(objective)/length(objective);  
end
toc

population_best_W=W_generate2(alldata,SubtaskAmo,TaskAmo,SubtaskNum,population_best_P,population_best_M);
[T,~,trace1,trace2,trace3,~]=FJSP_ADV_fitness4(population_best_P,population_best_M,population_best_W);

minXulie=[population_best_P,population_best_M,population_best_W]
minFitness=population_best_W

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
        
        


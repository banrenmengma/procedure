function []=FJSP_GA()
clc;
tic
Mk01='E:\程序代码\FJSP代码\mk\Mk01！36';
Mk02='E:\程序代码\FJSP代码\mk\Mk02！24';
Mk03='E:\程序代码\FJSP代码\mk\Mk03！204';
Mk04='E:\程序代码\FJSP代码\mk\Mk04！48';
Mk05='E:\程序代码\FJSP代码\mk\Mk05！168';
Mk06='E:\程序代码\FJSP代码\mk\Mk06！33';
Mk07='E:\程序代码\FJSP代码\mk\Mk07！133';
Mk08='E:\程序代码\FJSP代码\mk\Mk08！523';
Mk09='E:\程序代码\FJSP代码\mk\Mk09！299';
Mk10='E:\程序代码\FJSP代码\mk\Mk10！165';

[ndata, ntext, alldata] = xlsread(Mk02,'工件箱');
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

% P=0;
% M=0;

% for i=1:SubtaskAmo
%     P(i)=alldata{i+1,1};
% end

% Queue=randperm(numel(P));
% P=P(Queue);
% [M,W,position3]=M_W_generate(alldata,P,TaskAmo,SubtaskAmo,SubtaskNum);
% % for i=1:SubtaskAmo
% %     W(i)=alldata{i+1,6}(position3(i));
% % end
%
% w=0;
% for i=1:SubtaskAmo
%     for j=1:MachineAmo
%         if ismember(j,alldata{i+1,5})
%             position=find(j==alldata{i+1,5});
%             w(i,j)=alldata{i+1,6}(position);
%         else
%             w(i,j)=nan;
%         end
%     end
% end


nind=100;
maxgen=5;
ggap=0.9;
xovr=0.8;
mutr=0.6;

gen=0;

trace=zeros(2,maxgen);
% time=zeros(maxgen,6);
chromP=zeros(nind,SubtaskAmo);
% chromM=zeros(nind,SubtaskAmo);
% chromW=zeros(nind,SubtaskAmo);
% time0=clock;

for r=1:nind
    %     T=randperm(n);
    %    B=crtbp(1,m-1,crtbase(m-1,3));
    for i=1:SubtaskAmo
        P(i)=alldata{i+1,1};
    end
    
    Queue=randperm(numel(P));
    P=P(Queue);
    chromP(r,:)=[P];
    %     chromM(r,:)=[M];
    %     chromW(r,:)=[W];   
end;

[objective,P_temp,M_temp,fit_temp]=FJSP_objv(alldata,TaskAmo,SubtaskAmo,SubtaskNum,nind,chromP);
P_min=P_temp;
M_min=M_temp;
fit_min=fit_temp;
% [objective F G]=objv1(chrom,nind,m,n,C,P,a);

while gen<maxgen

    fitnv=ranking(objective);
    selch=select('sus',chromP,fitnv,ggap);
    selch=FJSP_lox(selch,nind*ggap,xovr);
    selch=FJSP_mut1(selch,nind*ggap,mutr);
    %selch=jiaocha3(selch,nind*ggap,xovr,m,n);
    %selch=bianyi3(selch,nind*ggap,mutr,m,n);

    [objectivesel,P_temp,M_temp,fit_temp]=FJSP_objv(alldata,TaskAmo,SubtaskAmo,SubtaskNum,nind*ggap,selch);
    [chromP,objective]=reins(chromP,selch,1,1,objective,objectivesel);
%     [objective,P_temp,M_temp,fit_temp]=FJSP_objv(alldata,TaskAmo,SubtaskAmo,SubtaskNum,nind,chromP);
  
    gen=gen+1;
    %  [Y,I]=min(objective),hold on;
    %   plot(objectivesel(I),Y,'bo');
    
    trace(1,gen)=min(objective);
    trace(2,gen)=sum(objective)/length(objective);
    %     time(gen,:)=clock;
    
%     if gen==1
%         P_min=P_temp;
%         M_min=M_temp;
%         fit_min=fit_temp;
%     else
        if fit_temp<fit_min
            P_min=P_temp;
            M_min=M_temp;
            fit_min=fit_temp;
        end
%     end
    
end;

% [M_min,W_min]=M_W_generate(alldata,P_min,TaskAmo,SubtaskAmo,SubtaskNum);
W_min=W_generate(alldata,SubtaskAmo,TaskAmo,SubtaskNum,P_min,M_min);
[T,M_min,trace1,trace2,trace3,fitness]=FJSP_fitness(alldata,TaskAmo,SubtaskAmo,SubtaskNum,P_min,M_min,W_min)

minXulie=[P_min;M_min;W_min]
minFitness=fit_min

toc

figure(1);
plot(trace(1,1:gen));
hold on;
plot(trace(2,1:gen),'-.');grid;
legend('解的变化','种群均值的变化');

figure(2);
colorset1=rand(1,TaskAmo);
colorset2=rand(1,TaskAmo);
[Trow,Tcol]=size(T);
for i=1:Trow
    for j=1:Tcol
        if trace2(i,j)~=0
            fill([T(i,j),T(i,j)+trace1(i,j),T(i,j)+trace1(i,j),T(i,j)],[1*i-0.3,1*i-0.3,1*i+0.3,1*i+0.3],[trace2(i,j)/TaskAmo,colorset1(trace2(i,j)),colorset2(trace2(i,j))]);hold on    
            text(T(i,j),i,strcat(num2str(trace2(i,j)),',',num2str(trace3(i,j))));
        end
    end
end

end
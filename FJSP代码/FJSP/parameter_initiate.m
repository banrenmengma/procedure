function []=parameter_initiate()
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

%for k=1:10
P=0;
M=0;

for i=1:SubtaskAmo
    P(i)=alldata{i+1,1};
end

Queue=randperm(numel(P));
P=P(Queue);
[M,W]=M_W_generate(alldata,P,TaskAmo,SubtaskAmo,SubtaskNum);
% for i=1:SubtaskAmo
%     W(i)=alldata{i+1,6}(position3(i));
% end

w=0;
for i=1:SubtaskAmo
    for j=1:MachineAmo
        if ismember(j,alldata{i+1,5})
            position=find(j==alldata{i+1,5});
            w(i,j)=alldata{i+1,6}(position);
        else
            w(i,j)=nan;
        end
    end
end

P
M
W;
[T,trace1,trace2,trace3,fitness]=FJSP_fitness(alldata,TaskAmo,SubtaskAmo,SubtaskNum,P,M,W);

figure(1);
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
%end
end

function [objective,minP,minM,minfit]=FJSP_objv(alldata,TaskAmo,SubtaskAmo,SubtaskNum,nind,chromP)
objective=zeros(nind,1);
for r=1:nind
    P=chromP(r,:);
    [M,W]=M_W_generate(alldata,P,TaskAmo,SubtaskAmo,SubtaskNum);
    [T,M,trace1,trace2,trace3,fitness]=FJSP_fitness(alldata,TaskAmo,SubtaskAmo,SubtaskNum,P,M,W);
    objective(r,1)=fitness;
    
    if r==1
        minfit=fitness;
        minP=P;
        minM=M;
    else
        if fitness<minfit
            minfit=fitness;
            minP=P;
            minM=M;
        end
    end
end
end
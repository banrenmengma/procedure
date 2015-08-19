function [objective,minP,minM,minfit]=FJSP_objv2(alldata,TaskAmo,SubtaskAmo,SubtaskNum,nind,chrom)
objective=zeros(nind,1);
for r=1:nind
    P=chrom(r,1:SubtaskAmo);
    M=chrom(r,SubtaskAmo+1:2*SubtaskAmo);
    W=W_generate2(alldata,SubtaskAmo,TaskAmo,SubtaskNum,P,M);
    [~,M,~,~,~,fitness]=FJSP_ADV_fitness4(P,M,W);
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
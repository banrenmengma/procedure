function [objective,chrom_X_P,chrom_X_M,minP,minM,minfit]=FJSP_objv3(alldata,TaskAmo,SubtaskAmo,SubtaskNum,nind,chrom)
objective=zeros(nind,1);
chrom_X_P=zeros(nind,SubtaskAmo);
chrom_X_M=zeros(nind,SubtaskAmo);
for r=1:nind
    P=chrom(r,1:SubtaskAmo);
    M=chrom(r,SubtaskAmo+1:2*SubtaskAmo);
    W=W_generate2(alldata,SubtaskAmo,TaskAmo,SubtaskNum,P,M);
    [~,M,~,~,~,fitness]=FJSP_ADV_fitness4(P,M,W);
    objective(r,1)=fitness;
    chrom_X_P(r,:)=P;
    chrom_X_M(r,:)=M;
    
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
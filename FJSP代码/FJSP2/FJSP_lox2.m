function newchrom = FJSP_lox2(chrom,nind,xovr,SubtaskNum)
[~,n]=size(chrom);
n=n/2;
newchrom=chrom;
selnum=randperm(nind);
num=2*fix(nind/2);
%TaskAmo=max(chrom(1,1:n));
% [objective]=FJSP_objv(alldata,TaskAmo,SubtaskAmo,SubtaskNum,nind,chromP);
% minimum=min(objective);
%n=SubtaskAmo;


for i=1:2:num
    p=rand;
    if xovr>p
        pos1=unidrnd(n-1);
        pos2=unidrnd(n-1);
        
        pos3=unidrnd(n-1);
        pos4=unidrnd(n-1);
        
        while pos1==pos2
            pos2=unidrnd(n-1);
        end;
        
        if pos1>pos2
            temp=pos1;
            pos1=pos2;
            pos2=temp;
        end;
        
        
        while pos3==pos4
            pos3=unidrnd(n-1);
        end;
        
        if pos3>pos4
            temp=pos3;
            pos3=pos4;
            pos4=temp;
        end;
        
        s1=chrom(selnum(i),1:n);
        s2=chrom(selnum(i+1),1:n);
        
        s3=chrom(selnum(i),n+1:2*n);
        s4=chrom(selnum(i+1),n+1:2*n);
        
        s11=zeros(1,pos2-pos1);
        s12=zeros(1,pos2-pos1);
        s13=zeros(1,pos4-pos3);
        s14=zeros(1,pos4-pos3);
        %         s22=0;
        s3_temp=M_tran1(s1,s3,SubtaskNum);
        s4_temp=M_tran1(s2,s4,SubtaskNum);
        
        for j=1:pos2-pos1
            s11(j)=s1(pos1+j);
            s12(j)=s2(pos1+j);
        end;
        
        for j=1:pos4-pos3
            s13(j)=s3_temp(pos3+j);
            s14(j)=s4_temp(pos3+j);
        end
        
        count=0;
        s11_diff=s11;
        s12_diff=s12;
        for j=1:pos2-pos1
            if ismember(s11(j),s12_diff)
                count=count+1;
                all_same(count)=s11(j);
                temp1=find(s11(j)==s12_diff);
                temp2=find(s11(j)==s11_diff);
                s11_diff(temp2(1))=[];
                s12_diff(temp1(1))=[];
            end
        end
        
        
        
        if isempty(s11_diff)
            s1_new=cat(2,s1(1:pos1),s12,s1(pos2+1:n));
            s2_new=cat(2,s2(1:pos1),s11,s2(pos2+1:n));
        else
            s1_new=cat(2,s1(1:pos1),zeros(1,pos2-pos1),s1(pos2+1:n));
            s2_new=cat(2,s2(1:pos1),zeros(1,pos2-pos1),s2(pos2+1:n));
            
            for j=1:length(s11_diff)
                temp_1=find(s12_diff(j)==s1_new);
                s1_new(temp_1(1))=s11_diff(j);
            end
            
            for j=1:length(s12_diff)
                temp_2=find(s11_diff(j)==s2_new);
                s2_new(temp_2(1))=s12_diff(j);
            end
            
            s1_new=cat(2,s1_new(1:pos1),s12,s1_new(pos2+1:n));
            s2_new=cat(2,s2_new(1:pos1),s11,s2_new(pos2+1:n));
        end
        
        s3_temp=cat(2,s3_temp(1:pos3),s14,s3_temp(pos4+1:n));
        s4_temp=cat(2,s4_temp(1:pos3),s13,s4_temp(pos4+1:n));
        
        s3_new=M_tran2(s1_new,s3_temp,SubtaskNum);
        s4_new=M_tran2(s2_new,s4_temp,SubtaskNum);
        
        newchrom(selnum(i),:)=[s1_new,s3_new];
        newchrom(selnum(i+1),:)=[s2_new,s4_new];
    end
end
end







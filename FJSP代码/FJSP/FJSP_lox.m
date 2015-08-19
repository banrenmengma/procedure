function newchromP = FJSP_lox(chromP,nind,xovr)
newchromP=chromP;
selnum=randperm(nind);
num=2*fix(nind/2);
TaskAmo=max(chromP(1,:));
% [objective]=FJSP_objv(alldata,TaskAmo,SubtaskAmo,SubtaskNum,nind,chromP);
% minimum=min(objective);
%n=SubtaskAmo;
[~,n]=size(chromP);

for i=1:2:num
    p=rand;
    if xovr>p
        pos1=unidrnd(n-1);
        pos2=unidrnd(n-1);
        %         pos3=unidrnd(n);
        %         pos4=unidrnd(n);
        
        while pos1==pos2
            pos2=unidrnd(n-1);
        end;
        
        if pos1>pos2
            temp=pos1;
            pos1=pos2;
            pos2=temp;
        end;
        
        %         while pos3==pos4
        %             pos3=unidrnd(n);
        %         end;
        %
        %         if pos3>pos4
        %             temp=pos3;
        %             pos3=pos4;
        %             pos4=temp;
        %         end;
        
        s1=chromP(selnum(i),:);
        s2=chromP(selnum(i+1),:);
        
        s11=zeros(1,pos2-pos1);
        s12=zeros(1,pos2-pos1);
        %         s22=0;
        
        for j=1:pos2-pos1
            s11(j)=s1(pos1+j);
            s12(j)=s2(pos1+j);
        end;
        
        %         for j=pos3:pos4
        %             s22(j)=s2(j);
        %         end;
        
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
        
%         s1_new1=cat(2,s1(1:pos1),zeros(1,pos2-pos1),s1(pos2+1:n));
%         s2_new1=cat(2,s2(1:pos1),zeros(1,pos2-pos1),s2(pos2+1:n));
%         s1_new2=s1_new1;
%         s2_new2=s2_new1;
%         
%         count3=zeros(1,TaskAmo);
%         for j=1:length(s11_diff)
%             count3(s11_diff(j))=count3(s11_diff(j))+1;
%             temp2=find(s1_new1==s12_diff(j));
%             s1_new2(temp2(count3(s11_diff(j))))=s11_diff(j);
%         end
%         
%         count4=zeros(1,TaskAmo);
%         for j=1:length(s12_diff)
%             count4(s12_diff(j))=count4(s12_diff(j))+1;
%             temp3=find(s2_new1==s11_diff(j));
%             s2_new2(temp3(count4(s12_diff(j))))=s12_diff(j);
%         end
%         
%         s1_new2=cat(2,s1_new2(1:pos1),s12,s1_new2(pos2+1:n));
%         s2_new2=cat(2,s2_new2(1:pos1),s11,s2_new2(pos2+1:n));
        
        newchromP(selnum(i),:)=s1_new;
        newchromP(selnum(i+1),:)=s2_new;
    end
end
end







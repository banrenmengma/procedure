function MAS_test()
[ndata, text, alldata] = xlsread('E:\算例\MK\Mk02！24','工件箱');
[row columns]=size(alldata);
for i=2:row
    for j=1:columns
        if ischar(cell2mat(alldata(i,j)))
            alldata(i,j)={str2num(cell2mat(alldata(i,j)))};
        end
    end
end

machine_number=input('machine number=');

[row columns]=size(alldata);
alldata=alldata(2:row,1:columns);

gongjian_number=max([alldata{:,1}]);%待加工工件数目

for i=1:gongjian_number
    gongxu_number(i)=length(find(i==[alldata{:,1}]));
end

worktable=cell(row-1,machine_number+2);

kk=0;
for i=1:length(gongxu_number)
    for j=1:gongxu_number(i)
        kk=kk+1;
        worktable{kk,1}=i;
        worktable{kk,2}=strcat('S',num2str(i),'.',num2str(j));
        for k=3:machine_number+2
            if length(find((k-2)==alldata{kk,5}))>0
                position=find((k-2)==alldata{kk,5});
                temp=alldata{kk,6};
                worktable{kk,k}=temp(position);
            else
                worktable{kk,k}=[];
            end
        end
    end
end

%worktable

A=zeros(1,length(gongxu_number));

% P_t=zeros(length(gongxu_number),row-1);
% c=1;


for c=1:60
    P1(c).set=cell(10,8);
    % if c==1;
    %     count1=0;
    %     for i=1:row-1
    %         temp1=worktable{i,2};
    %         temp2=temp1(strfind(temp1,'.')+1:length(temp1));
    %         if strcmpi(temp2,num2str(c))
    %             count1=count1+1;
    %             for j=1:machine_number+2
    %                 P1(c).set{count1,j}=worktable{i,j};
    %             end
    %         end
    %     end
    k_temp=0;
    count1=0;
    for i=1:length(gongxu_number)
        for j=1:gongxu_number(i)
            k_temp=k_temp+1;
            temp1=worktable{k_temp,2};
            temp2=temp1(strfind(temp1,'.')+1:length(temp1));
            if strcmpi(temp2,num2str(A(i)+1))
                count1=count1+1;
                for k=1:machine_number+2
                    P1(c).set{i,k}=worktable{k_temp,k};
                end
            end
        end
    end
    %
    %     [P1_row,P1_col]=size(P1(c).set);
     P1(c).set
    
    
    for i=1:machine_number
        count2=0;
        M1(i).biao1(c).set=cell(10,4);
        % for j=1:length([P1(c).set{:,i+2}])
        for j=1:length(gongxu_number)
            if length(P1(c).set{j,i+2})>0
                count2=count2+1;
                M1(i).biao1(c).set{count2,1}=P1(c).set{j,2};
                M1(i).biao1(c).set{count2,2}=i;
                
                if c==1
                    M1(i).biao1(c).set{count2,3}=0;
                else
                    M1(i).biao1(c).set{count2,3}=max(P_t(c-1).set(j),M_t(i,c-1));
                end
                M1(i).biao1(c).set{count2,4}=M1(i).biao1(c).set{count2,3}+P1(c).set{j,i+2};
            end
        end
    end
    
    
    
  for i=1:6
         M1(i).biao1(c).set
    end
    
    for i=1:length(gongxu_number)
        %         [P1_row,P1_col]=M1(i).biao1;
         P1(i).biao1(c).set=cell(6,5);
        count3=0;
        for j=1:machine_number
            %             for k=1:P1_row
            if length(strfind([M1(j).biao1(c).set{:,1}],strcat('S',num2str(i),'.',num2str(A(i)+1))))>0
                [row_temp,col_temp]=find(strcmp(M1(j).biao1(c).set,strcat('S',num2str(i),'.',num2str(A(i)+1))));
                position=row_temp;
                count3=count3+1;
                P1(i).biao1(c).set{count3,1}=M1(j).biao1(c).set{position,1};
                P1(i).biao1(c).set{count3,2}=M1(j).biao1(c).set{position,2};
                P1(i).biao1(c).set{count3,3}=M1(j).biao1(c).set{position,3};
                P1(i).biao1(c).set{count3,4}=M1(j).biao1(c).set{position,4};
            end
        end
    end
    
%      for i=2:6
%           P1(i).biao1(c).set
%      end
    
    for i=1:length(gongxu_number)
        P1(i).biao2(c).set=cell(2,4);
        [row_temp,col_temp]=find(min([P1(i).biao1(c).set{:,4}])==[P1(i).biao1(c).set{:,4}]);
        if length(row_temp)==1
            P1(i).biao2(c).set{1,1}=P1(i).biao1(c).set{col_temp,1};
            P1(i).biao2(c).set{1,2}=P1(i).biao1(c).set{col_temp,2};
            P1(i).biao2(c).set{1,3}=P1(i).biao1(c).set{col_temp,3};
            P1(i).biao2(c).set{1,4}=P1(i).biao1(c).set{col_temp,4};
        else
            for j=1:length(row_temp)
                P1(i).biao2(c).set{j,1}=P1(i).biao1(c).set{col_temp(j),1};
                P1(i).biao2(c).set{j,2}=P1(i).biao1(c).set{col_temp(j),2};
                P1(i).biao2(c).set{j,3}=P1(i).biao1(c).set{col_temp(j),3};
                P1(i).biao2(c).set{j,4}=P1(i).biao1(c).set{col_temp(j),4};
            end
        end
    end
    
    
    %  P1.biao2
    for i=1:machine_number
        M1(i).biao2(c).set=cell(1,4);
        count4=0;
        for j=1:1:length(gongxu_number)
            if length(find(i==[P1(j).biao2(c).set{:,2}]))>0
                count4=count4+1;
                [row_temp,col_temp]=find(i==[P1(j).biao2(c).set{:,2}]);
                M1(i).biao2(c).set{count4,1}=P1(j).biao2(c).set{col_temp,1};
                M1(i).biao2(c).set{count4,2}=P1(j).biao2(c).set{col_temp,2};
                M1(i).biao2(c).set{count4,3}=P1(j).biao2(c).set{col_temp,3};
                M1(i).biao2(c).set{count4,4}=P1(j).biao2(c).set{col_temp,4};
            end
        end
    end
    
    for i=1:6
        M1(i).biao2(c).set
    end
    
    %     M1(1).biao2(c).set
    %     M1(2).biao2(c).set
    %     M1(3).biao2(c).set
    %     M1(4).biao2(c).set
    %     M1(5).biao2(c).set
    %     M1(6).biao2(c).set
    
    %     count5=0;
    %     d=zeros(1,length(gongxu_number));
    %     ct=0;
    %     for i=1:length(gongxu_number)
    %         for j=1:gongxu_number(i)
    %             count5=count5+1;
    %             d(i,j)=sum([worktable{count5,3:2+machine_number}])/length([worktable{count5,3:2+machine_number}]);
    %             R(i,j)=sum([worktable{count5,3:2+machine_number}])/length([worktable{count5,3:2+machine_number}]);
    %             CR(i,j)=(d(i,j)-ct)/R(i,j);
    %         end
    %     end
    %
    for i=1:machine_number
        if length([M1(i).biao2(c).set{1,2}])>0
            position=find(min([M1(i).biao2(c).set{:,4}])==[M1(i).biao2(c).set{:,4}]);
            M1(i).biao3(c).set{1,1}=M1(i).biao2(c).set{position(1),1};
            M1(i).biao3(c).set{1,2}=M1(i).biao2(c).set{position(1),2};
            M1(i).biao3(c).set{1,3}=M1(i).biao2(c).set{position(1),3};
            M1(i).biao3(c).set{1,4}=M1(i).biao2(c).set{position(1),4};
        else
            M1(i).biao3(c).set{1,1}=M1(i).biao3(c-1).set{1,1};
            M1(i).biao3(c).set{1,2}=M1(i).biao3(c-1).set{1,2};
            M1(i).biao3(c).set{1,3}=M1(i).biao3(c-1).set{1,3};
            M1(i).biao3(c).set{1,4}=M1(i).biao3(c-1).set{1,4};
            %         else
            %             M1(i).biao3{1,1}=M1(i).biao2{position,1};
            %             M1(i).biao3{1,2}=M1(i).biao2{position,2};
            %             M1(i).biao3{1,3}=M1(i).biao2{position,3};
            %             M1(i).biao3{1,4}=M1(i).biao2{position,4};
            %         end
        end
    end
    
    for i=1:6
     M1(i).biao3(c).set
    end
    
    for i=1:length(gongxu_number)
        for j=1:machine_number
            if strcmpi(M1(j).biao3(c).set{1,1},P1(c).set{i,2})
                A(i)=A(i)+1;
            end
        end
    end
    
    for i=1:machine_number
        M_t(i,c)= M1(i).biao3(c).set{1,4};
    end
    
    for i=1:machine_number
        a{i}=M1(i).biao3(c).set{1,1};
    end
    
    count6=0;
    P_t(c).set=zeros(1,length(gongxu_number));
    
    for i=1:length(gongxu_number)
        if strfind([a{1,:}],[P1(c).set{i,2}])
            count6=count6+1;
            temp_1=M1(count6).biao3(c).set{1,1};
            temp_2=temp_1(2:strfind(temp_1,'.')-1);
            %             if strcmpi(temp_2,num2str(i))
            P_t(c).set(i)=M1(count6).biao3(c).set{1,4};
            %             end
        end
    end
 %   P_t(c).set
c
end
end








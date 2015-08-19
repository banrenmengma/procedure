function [T,M,trace1,trace2,trace3,fitness]=FJSP_ADV_fitness2(P,M,W)
SubtaskAmo=numel(P);

P_set=P(1);
M_set=M(1);
maxspan=W(1);
T(M(1),1)=0;
TT(P(1),1)=0;
E(M(1),1)=W(1);
EE(P(1),1)=W(1);
StartTime(M(1),1)=0;
EndTime(M(1),1)=0;
trace1(M(1),1)=W(1);
trace2(M(1),1)=P(1);
trace3(M(1),1)=1;

for i=2:SubtaskAmo
    if (~ismember(M(i),M_set))&&(~ismember(P(i),P_set))
        M_set(i)=M(i);
        P_set(i)=P(i);
        T(M(i),1)=0;
        TT(P(i),1)=T(M(i),1);
        E(M(i),1)=T(M(i),1)+W(i);
        EE(P(i),1)=TT(P(i),1)+W(i);
        maxspan=max(maxspan,E(M(i),1));
        StartTime(M(i),1)=0;
        EndTime(M(i),1)=0;
        trace1(M(i),1)=W(i);
        trace2(M(i),1)=P(i);
        trace3(M(i),1)=1;
    elseif (~ismember(M(i),M_set))&&(ismember(P(i),P_set))
        M_set(i)=M(i);
        P_set(i)=P(i);
        temp1=find(P(i)==P_set);
        temp2=length(temp1);
        temp3=temp1(temp2-1);
        temp4=find(M(temp3)==M_set);
%         temp5=length(temp4);
        temp6= temp3==temp4;
        T(M(i),1)=EE(P(i),temp2-1);
        TT(P(i),temp2)=T(M(i),1);
        E(M(i),1)=T(M(i),1)+W(i);
        EE(P(i),temp2)=TT(P(i),temp2)+W(i);
        maxspan=max(maxspan,E(M(i),1));
        StartTime(M(i),1)=0;
        EndTime(M(i),1)=T(M(i),1);
        trace1(M(i),1)=W(i);
        trace2(M(i),1)=P(i);
        trace3(M(i),1)=temp2;
    elseif (ismember(M(i),M_set))&&(~ismember(P(i),P_set))
        M_set(i)=M(i);
        P_set(i)=P(i);
        temp1=find(M(i)==M_set);
        temp2=length(temp1);
        temp3=find(P(i)==P_set);
        temp4=length(temp3);
%         temp3=P_set(temp1(temp2-1));
%         temp4=find(temp3==P_set);
        flag1=0;
        for j=1:temp2-1
            if EndTime(M(i),j)-StartTime(M(i),j)>=W(i)
                flag1=1;
                temp6=EndTime(M(i),j);
                EndTime(M(i),j)=StartTime(M(i),j);
                StartTime(M(i),j+1)= StartTime(M(i),j)+W(i);
                EndTime(M(i),j+1)=temp6;
                
                for k1=temp2:-1:j+1
                    T(M(i),k1)=T(M(i),k1-1);
                    E(M(i),k1)=E(M(i),k1-1);
                    trace1(M(i),k1)=trace1(M(i),k1-1);
                    trace2(M(i),k1)=trace2(M(i),k1-1);
                    trace3(M(i),k1)=trace3(M(i),k1-1);
                end
                
                if j==1
                    T(M(i),j)=0;
                    TT(P(i),temp4)=T(M(i),j);
                    E(M(i),j)=T(M(i),j)+W(i);
                    EE(P(i),temp4)=TT(P(i),temp4)+W(i);
                    trace1(M(i),j)=W(i);
                    trace2(M(i),j)=P(i);
                    trace3(M(i),j)=1;
                else
                    T(M(i),j)=E(M(i),j-1);
                    TT(P(i),temp4)=T(M(i),j);
                    E(M(i),j)=T(M(i),j)+W(i);
                    EE(P(i),temp4)=TT(P(i),temp4)+W(i);
                    trace1(M(i),j)=W(i);
                    trace2(M(i),j)=P(i);
                    trace3(M(i),j)=1;
                end
                
                if temp2-j>=2
                    for k2=temp2:-1:j+2
                        StartTime(M(i),k2)=StartTime(M(i),k2-1);
                        EndTime(M(i),k2)=EndTime(M(i),k2-1);
                    end
                end
                break;
            end
        end
        
        if ~flag1
%             T(M(i),temp2)=T(M_set(i),temp2-1)+W(temp1(temp2-1));
            T(M(i),temp2)=E(M(i),temp2-1);
            TT(P(i),temp4)=T(M(i),temp2);
            E(M(i),temp2)=T(M(i),temp2)+W(i);
            EE(P(i),temp4)=TT(P(i),temp4)+W(i);
            maxspan=max(maxspan,E(M(i),temp2));
            StartTime(M(i),temp2)=E(M(i),temp2-1);
            EndTime(M(i),temp2)=T(M(i),temp2);
            trace1(M(i),temp2)=W(i);
            trace2(M(i),temp2)=P(i);
            trace3(M(i),temp2)=1;
        end
%         temp5=length(temp4);
%         T(M(i),temp2)=T(M_set(i),temp2-1)+W(temp1(temp2-1));
%         maxspan=max(maxspan,T(M(i),temp2)+W(i));
%         trace1(M(i),temp2)=W(i);
%         trace2(M(i),temp2)=P(i);
%         trace3(M(i),temp2)=1;
    else
        M_set(i)=M(i);
        P_set(i)=P(i);
        temp1=find(M(i)==M_set);
        temp2=length(temp1);
        %         temp3=P_set(temp1(temp2-1));
        %         temp4=find(temp3==P_set);
        %         temp5=length(temp4);
        temp6=find(P(i)==P_set);
        temp7=length(temp6);
        temp8=temp6(temp7-1);
        temp9=find(M(temp8)==M_set);
        temp10= temp8==temp9;
        
        flag2=0;
        for j=1:temp2-1
            if (EndTime(M(i),j)-StartTime(M(i),j)>=W(i)) && (EndTime(M(i),j)-EE(P(i),temp7-1)>=W(i))
                flag2=1;
                
                for k1=temp2:-1:j+1
                    T(M(i),k1)=T(M(i),k1-1);
                    E(M(i),k1)=E(M(i),k1-1);
                    trace1(M(i),k1)=trace1(M(i),k1-1);
                    trace2(M(i),k1)=trace2(M(i),k1-1);
                    trace3(M(i),k1)=trace3(M(i),k1-1);
                end
                
                if StartTime(M(i),j)<EE(P(i),temp7-1)
                    temp11=EndTime(M(i),j);
                    EndTime(M(i),j)=EE(P(i),temp7-1);
                    StartTime(M(i),j+1)= EndTime(M(i),j)+W(i);
                    EndTime(M(i),j+1)=temp11;
                    T(M(i),j)=EndTime(M(i),j);
                    TT(P(i),temp7)=T(M(i),j);
                    E(M(i),j)=T(M(i),j)+W(i);
                    EE(P(i),temp7)=TT(P(i),temp7)+W(i);
%                     trace1(M(i),j)=W(i);
%                     trace2(M(i),j)=P(i);
%                     trace3(M(i),j)=temp7;
                else   
                    temp11=EndTime(M(i),j);
                    EndTime(M(i),j)=StartTime(M(i),j);
                    StartTime(M(i),j+1)= StartTime(M(i),j)+W(i);
                    EndTime(M(i),j+1)=temp11;
                    T(M(i),j)=E(M(i),j-1);
                    TT(P(i),temp7)=T(M(i),j);
                    E(M(i),j)=T(M(i),j)+W(i);
                    EE(P(i),temp7)=TT(P(i),temp7)+W(i);
%                     trace1(M(i),j)=W(i);
%                     trace2(M(i),j)=P(i);
%                     trace3(M(i),j)=temp7;
                end
                
                
                
                trace1(M(i),j)=W(i);
                trace2(M(i),j)=P(i);
                trace3(M(i),j)=temp7;
                
%                 if j==1
%                     T(M(i),j)=0;
%                     E(M(i),j)=T(M(i),j)+W(i);
%                 else
%                     T(M(i),j)=E(M(i),j-1);
%                     E(M(i),j)=T(M(i),j)+W(i);
%                 end
                
                if temp2-j>=2
                    for k2=temp2:-1:j+2
                        StartTime(M(i),k2)=StartTime(M(i),k2-1);
                        EndTime(M(i),k2)=EndTime(M(i),k2-1);
                    end
                end
                break;
            end
        end
        
        if ~flag2
            T(M(i),temp2)=max(EE(P(i),temp7-1),E(M_set(i),temp2-1));
            TT(P(i),temp7)=EE(P(i),temp7-1);
            E(M(i),temp2)=T(M(i),temp2)+W(i);
            EE(P(i),temp7)=TT(P(i),temp7)+W(i);
            maxspan=max(maxspan,E(M(i),temp2));
            StartTime(M(i),temp2)=E(M(i),temp2-1);
            EndTime(M(i),temp2)=T(M(i),temp2);
%             EndTime(M(i),temp2)=StartTime(M(i),temp2)+max(0,EE(P(i),temp7-1)-E(M_set(i),temp2-1));
            trace1(M(i),temp2)=W(i);
            trace2(M(i),temp2)=P(i);
            trace3(M(i),temp2)=temp7;
        end

%         T(M(i),temp2)=max(T(M(temp6(temp7-1)),temp10)+W(temp6(temp7-1)),T(M_set(i),temp2-1)+W(temp1(temp2-1)));
%         maxspan=max(maxspan,T(M(i),temp2)+W(i));
%         trace1(M(i),temp2)=W(i);
%         trace2(M(i),temp2)=P(i);
%         trace3(M(i),temp2)=temp7;      
    end
    fitness=maxspan;
end
end
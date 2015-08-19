function [T,M,trace1,trace2,trace3,fitness]=FJSP_fitness2(P,M,W)

% T=zeros(max(M),1);
SubtaskAmo=numel(P);

P_set=P(1);
M_set=M(1);
maxspan=W(1);
T(M(1),1)=0;
trace1(M(1),1)=W(1);
trace2(M(1),1)=P(1);
trace3(M(1),1)=1;

for i=2:SubtaskAmo
    if (~ismember(M(i),M_set))&&(~ismember(P(i),P_set))
        M_set(i)=M(i);
        P_set(i)=P(i);
        T(M(i),1)=0;
        maxspan=max(maxspan,T(M(i),1)+W(i));
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
        T(M(i),1)=T(M(temp1(temp2-1)),temp6)+W(temp1(temp2-1));
        maxspan=max(maxspan,T(M(i),1)+W(i));
        trace1(M(i),1)=W(i);
        trace2(M(i),1)=P(i);
        trace3(M(i),1)=temp2;
    elseif (ismember(M(i),M_set))&&(~ismember(P(i),P_set))
        M_set(i)=M(i);
        P_set(i)=P(i);
        temp1=find(M(i)==M_set);
        temp2=length(temp1);
%         temp3=P_set(temp1(temp2-1));
%         temp4=find(temp3==P_set);
%         temp5=length(temp4);
        T(M(i),temp2)=T(M_set(i),temp2-1)+W(temp1(temp2-1));
        maxspan=max(maxspan,T(M(i),temp2)+W(i));
        trace1(M(i),temp2)=W(i);
        trace2(M(i),temp2)=P(i);
        trace3(M(i),temp2)=1;
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
        T(M(i),temp2)=max(T(M(temp6(temp7-1)),temp10)+W(temp6(temp7-1)),T(M_set(i),temp2-1)+W(temp1(temp2-1)));
        trace1(M(i),temp2)=W(i);
        trace2(M(i),temp2)=P(i);
        trace3(M(i),temp2)=temp7;
        maxspan=max(maxspan,T(M(i),temp2)+W(i));
    end
    fitness=maxspan;
end
end












% L=length(P);
% maxPGJ=max(P);
% for i=1:maxPGJ
% maxPGX(i)=length(find(P==i));
% end                           %工序集
% maxM=max(M);
%
% M_set=zeros(1,L);
% P_set=zeros(1,L);
% T=zeros(maxPGJ,max(maxPGX),maxM);
% w;                           %工件在机器上的加工时间集
%
% T(P(1),1,M(1))=0;
% M_set(1)=M(1);
% P_set(1)=P(1);
% maxspan=w(P(1),1,M(1));
%
% for i=2:L
%     if (~ismember(M(i),M_set))&&(~ismember(P(i),P_set))
%         M_set(i)=M(i);
%         P_set(i)=P(i);
%         T(P(i),1,M(i))=0;
%         maxspan=max(maxspan,T(P(i),1,M(i))+w(P(i),1,M(i)));
%     elseif (~ismember(M(i),M_set))&&(ismember(P(i),P_set))
%         M_set(i)=M(i);
%         P_set(i)=P(i);
%         temp1=find(P(i)==P_set);
%         temp2=length(temp1);
%         T(P(i),temp2,M(i))=T(P(temp1(temp2-1)),temp2-1,M(temp1(temp2-1)))+w(P(temp1(temp2-1)),temp2-1,M(temp1(temp2-1)));
%         maxspan=max(maxspan,T(P(i),temp2,M(i))+w(P(i),temp2,M(i)));
%     elseif (ismember(M(i),M_set))&&(~ismember(P(i),P_set))
%         M_set(i)=M(i);
%         P_set(i)=P(i);
%         temp1=find(M(i)==M_set);
%         temp2=length(temp1);
%         temp3=P_set(temp1(temp2-1));
%         temp4=find(temp4==P_set);
%         temp5=length(temp4);
%         T(P(i),1,M(i))=T(temp3,temp5,M_set(temp1(temp2-1)))+w(temp3,temp5,M_set(temp1(temp2-1)));
%         maxspan=max(maxspan,T(P(i),1,M(i))+w(P(i),1,M(i)));
%     else
%         M_set(i)=M(i);
%         P_set(i)=P(i);
%         temp1=find(M(i)==M_set);
%         temp2=length(temp1);
%         temp3=P_set(temp1(temp2-1));
%         temp4=find(temp4==P_set);
%         temp5=length(temp4);
%         temp6=find(P(i)==P_set);
%         temp7=length(temp6);
%         T(P(i),temp7,M(i))=max(T(P(temp6(temp7-1)),temp7-1,M(temp6(temp7-1)))+w(P(temp6(temp7-1)),temp7-1,M(temp6(temp7-1))),T(temp3,temp5,M_set(temp1(temp2-1)))+w(temp3,temp5,M_set(temp1(temp2-1))));
%         maxspan=max(maxspan,T(P(i),temp7,M(i))+w(P(i),temp7,M(i)));
%     end
% end
%
% fitness=maxspan;
% end
%
%
%
%

%{
for i=2:maxPGJ
    position=min(find(P(i)==i));
    if ~ismember(M(position),M_set)
        M_set(i)=M(position);
        T(P(i),1,M(i))=0;
    else
        temp=find(M(position)==M_set);
        position=min(find(M_set(temp)==M));
        M_set(i)
        T(P(i),1,M(i))=p(P(position),1,M(position));
    end
end

for i=1:maxPGJ
    for j=2:maxPGX(i)
        temp=find(P(i)==i);
        position=temp(j);
        T(P(i),j,M(i))=
%}



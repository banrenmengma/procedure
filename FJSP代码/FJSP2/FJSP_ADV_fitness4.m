function [T,M,trace1,trace2,trace3,fitness]=FJSP_ADV_fitness4(P,M,W)
SubtaskAmo=numel(P);
countP=zeros(1,max(P));
countM=zeros(1,max(M));

T(M(1),1)=0;
E(M(1),1)=W(1);
BS(M(1),1)=0;
BE(M(1),1)=0;
TS(P(1),1)=T(M(1),1);
TE(P(1),1)=TS(P(1),1)+W(1);
maxspan=W(1);
trace1(M(1),1)=W(1);
trace2(M(1),1)=P(1);
trace3(M(1),1)=1;
countP(P(1))=countP(P(1))+1;
countM(M(1))=countM(M(1))+1;

for i=2:SubtaskAmo
    
    if countP(P(i))==0 && countM(M(i))==0
        countP(P(i))=countP(P(i))+1;
        countM(M(i))=countM(M(i))+1;
        T(M(i),1)=0;
        E(M(i),1)=W(i);
        BS(M(i),1)=0;
        BE(M(i),1)=0;
        TS(P(i),1)=0;
        TE(P(i),1)=TS(P(i),1)+W(i);
        maxspan=max(maxspan,E(M(i),1));
        trace1(M(i),1)=W(i);
        trace2(M(i),1)=P(i);
        trace3(M(i),1)=1;
        
    elseif countP(P(i))>0 && countM(M(i))==0
        countP(P(i))=countP(P(i))+1;
        countM(M(i))=countM(M(i))+1;
        T(M(i),1)=TE(P(i),countP(P(i))-1);
        E(M(i),1)=T(M(i),1)+W(i);
        BS(M(i),1)=0;
        BE(M(i),1)=T(M(i),1);
        TS(P(i),countP(P(i)))=T(M(i),1);
        TE(P(i),countP(P(i)))=TS(P(i),countP(P(i)))+W(i);
        maxspan=max(maxspan,E(M(i),1));
        trace1(M(i),1)=W(i);
        trace2(M(i),1)=P(i);
        trace3(M(i),1)=countP(P(i));
        
    elseif countP(P(i))==0 && countM(M(i))>0
        countP(P(i))=countP(P(i))+1;
        countM(M(i))=countM(M(i))+1;
        flag1=0;
        for j=1:countM(M(i))-1
            if BE(M(i),j)-BS(M(i),j)>=W(i);
                flag1=1;
                temp=BE(M(i),j);
                BE(M(i),j)=BS(M(i),j);
                BS(M(i),j+1)=BE(M(i),j)+W(i);
                BE(M(i),j+1)=temp;
                
                for k1=countM(M(i)):-1:j+1
                    T(M(i),k1)=T(M(i),k1-1);
                    E(M(i),k1)=E(M(i),k1-1);
                    trace1(M(i),k1)=trace1(M(i),k1-1);
                    trace2(M(i),k1)=trace2(M(i),k1-1);
                    trace3(M(i),k1)=trace3(M(i),k1-1);
                end
                
                if j==1
                    T(M(i),j)=0;
                    E(M(i),j)=T(M(i),j)+W(i);
                else
                    T(M(i),j)=E(M(i),j-1);
                    E(M(i),j)=T(M(i),j)+W(i);
                end
                
                TS(P(i),countP(P(i)))=T(M(i),j);
                TE(P(i),countP(P(i)))=TS(P(i),countP(P(i)))+W(i);
                trace1(M(i),j)=W(i);
                trace2(M(i),j)=P(i);
                trace3(M(i),j)=1;
                
                if countM(M(i))-j>=2
                    for k2=countM(M(i)):-1:j+2
                        BS(M(i),k2)=BS(M(i),k2-1);
                        BE(M(i),k2)=BE(M(i),k2-1);
                    end
                end
                break;
            end
        end
        
        if ~flag1
            T(M(i),countM(M(i)))=E(M(i),countM(M(i))-1);
            E(M(i),countM(M(i)))=T(M(i),countM(M(i)))+W(i);
            BS(M(i),countM(M(i)))=E(M(i),countM(M(i))-1);
            BE(M(i),countM(M(i)))=E(M(i),countM(M(i))-1);
            TS(P(i),countP(P(i)))=T(M(i),countM(M(i)));
            TE(P(i),countP(P(i)))=TS(P(i),countP(P(i)))+W(i);
            maxspan=max(maxspan,TE(P(i),countP(P(i))));
            trace1(M(i),countM(M(i)))=W(i);
            trace2(M(i),countM(M(i)))=P(i);
            trace3(M(i),countM(M(i)))=countP(P(i));
        end
        
    else
        countP(P(i))=countP(P(i))+1;
        countM(M(i))=countM(M(i))+1;
        flag2=0;
        for j=1:countM(M(i))-1
            if BE(M(i),j)-BS(M(i),j)>=W(i) && BE(M(i),j)-TE(P(i),countP(P(i))-1)>=W(i)
                flag2=1;
                
                for k1=countM(M(i)):-1:j+1
                    T(M(i),k1)=T(M(i),k1-1);
                    E(M(i),k1)=E(M(i),k1-1);
                    trace1(M(i),k1)=trace1(M(i),k1-1);
                    trace2(M(i),k1)=trace2(M(i),k1-1);
                    trace3(M(i),k1)=trace3(M(i),k1-1);
                end
                
                if BS(M(i),j)<=TE(P(i),countP(P(i))-1)
                   temp=BE(M(i),j);
                   BE(M(i),j)=TE(P(i),countP(P(i))-1);
                   BS(M(i),j+1)=BE(M(i),j)+W(i);
                   BE(M(i),j+1)=temp;
                   T(M(i),j)=TE(P(i),countP(P(i))-1);
                   E(M(i),j)=T(M(i),j)+W(i);
                else
                    temp=BE(M(i),j);
                    BE(M(i),j)=BS(M(i),j);
                    BS(M(i),j+1)=BE(M(i),j)+W(i);
                    BE(M(i),j+1)=temp;
                    T(M(i),j)=E(M(i),j-1);
                    E(M(i),j)=T(M(i),j)+W(i);
                end
                
                TS(P(i),countP(P(i)))=T(M(i),j);
                TE(P(i),countP(P(i)))=TS(P(i),countP(P(i)))+W(i);
                
                trace1(M(i),j)=W(i);
                trace2(M(i),j)=P(i);
                trace3(M(i),j)=countP(P(i));
                
                if countM(M(i))-j>=2
                    for k2=countM(M(i))
                        BS(M(i),k2)=BS(M(i),k2-1);
                        BE(M(i),k2)=BE(M(i),k2-1);
                    end
                end
                break;
            end
        end
        
        if ~flag2
            T(M(i),countM(M(i)))=max(E(M(i),countM(M(i))-1),TE(P(i),countP(P(i))-1));
            E(M(i),countM(M(i)))=T(M(i),countM(M(i)))+W(i);
            BS(M(i),countM(M(i)))=E(M(i),countM(M(i))-1);
            BE(M(i),countM(M(i)))=T(M(i),countM(M(i)));
            TS(P(i),countP(P(i)))=T(M(i),countM(M(i)));
            TE(P(i),countP(P(i)))=TS(P(i),countP(P(i)))+W(i);
            maxspan=max(maxspan,E(M(i),countM(M(i))));
            trace1(M(i),countM(M(i)))=W(i);
            trace2(M(i),countM(M(i)))=P(i);
            trace3(M(i),countM(M(i)))=countP(P(i));
        end
    end
    fitness=maxspan;
end
end
                
                    
        
        
        

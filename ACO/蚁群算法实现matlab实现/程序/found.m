function biao=found(nn,pp)      %Ñ°ÕÒÐÂÂ·¾¶
biao=[];
for i=1:length(pp)
    PI=nn(i)-pp;
    P=PI;
    P(PI<0)=-P(PI<0);
    II=find(P==min(P));
    if PI(II(1))>0
        I=II(1)+1;
    else
        I=II(1);
    end
    biao=[biao,I];
end
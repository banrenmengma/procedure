function [R,cou]=unit(R,cou,Cou)                
n=length(R);
for i=n:-1:2
    for j=1:i-1
        if R(i)==R(j) 
            cou(R(j))=cou(R(j))+Cou(R(i));   %������·������Ϣ��
            R(i)=[];
            break
        end
    end
end
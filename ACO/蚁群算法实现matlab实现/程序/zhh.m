function pp=zhh(t)                   %���������
t=100*t./sum(t);                         %Ũ�ȹ�һ��
n=length(t);
pp=[];
q=0;
for i=1:n
    q=q+t(i);
    pp=[pp,q];
end

function pp=zhh(t)                   %求概率向量
t=100*t./sum(t);                         %浓度归一化
n=length(t);
pp=[];
q=0;
for i=1:n
    q=q+t(i);
    pp=[pp,q];
end

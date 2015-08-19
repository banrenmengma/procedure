function [cou,L]=could(route,d)        %信息素浓度
[n,m]=size(route);
% L=zeros(n,1);
% cou=zeros(n,1);
for i=1:n
    L(i)=0;
    for j=1:m-1
        L(i)=L(i)+d(route(i,j),route(i,j+1));     
    end
    L(i)=L(i)+d(route(i,end),route(i,1));        %求路径长度
    cou(i)=100./L(i);
end
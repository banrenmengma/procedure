function [cou,L]=could(route,d)        %��Ϣ��Ũ��
[n,m]=size(route);
% L=zeros(n,1);
% cou=zeros(n,1);
for i=1:n
    L(i)=0;
    for j=1:m-1
        L(i)=L(i)+d(route(i,j),route(i,j+1));     
    end
    L(i)=L(i)+d(route(i,end),route(i,1));        %��·������
    cou(i)=100./L(i);
end
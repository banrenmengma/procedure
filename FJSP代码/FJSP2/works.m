function [w]=works(P,M,alldata)

% [ndata, text, alldata] = xlsread('E:\ËãÀý\MK\Mk02£¡24','¹¤¼þÏä');
% [row columns]=size(alldata);
% for i=2:row
%     for j=1:columns
%         if ischar(cell2mat(alldata(i,j)))
%             alldata(i,j)={str2num(cell2mat(alldata(i,j)))};
%         end
%     end
% end

[row columns]=size(alldata);
alldata=alldata(2:row,1:columns);

L=length(P);

w=zeros(1,L);
M_set=zeros(1,L);
P_set=zeros(1,L);


for i=1:L
    M_set(i)=M(i);
    P_set(i)=P(i);
    temp1=find(P(i)==P_set);
    temp2=length(temp1);
    position1=find(P(i)==[alldata{:,1}] & temp2==[alldata{:,3}]);
    temp3=alldata(position1,:);
    position2=find(M(i)==[temp3{5}]);
    temp4=[temp3{6}];
    w(i)=temp4{positon2};
end
end

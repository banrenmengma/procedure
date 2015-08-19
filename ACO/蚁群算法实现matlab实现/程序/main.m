clc;clear all;close all;
%====蚁群算法的实现
%====made by haoren1990
may=0.1;            %蚂蚁突变概率
p=0.4;               %信息素挥发系数
[x,y,d]=citydata;    %引入邻接矩阵
n=length(x);         %城市数目
m=400;               %蚁群规模
dt=400;              %迭代次数
%%
%====初始生成m条路线即有m只蚂蚁
for i=1:m
    routen(i,:)=randperm(n);
end
[n,mm]=size(routen);
[cou,L]=could(routen,d);        %求每条路径信息素浓度
%%
%====开始循环
for k=1:dt
    if k>1
        delete(Q);
    end
    [n,mm]=size(routen);
    nn=rand(n,1)*100;
    pp=zhh(cou);                    %将信息素浓度转化成概率
    R=found(nn,pp);                 %每只蚂蚁都以一个概率选择一条已有的路径
    Cou=cou;
    Qp=rand(n,1);
    R_t=[];                         %记录突变路径
    for i=1:n                   
        if Qp(i)<may
            r_t=exchange(routen(i,:));   %蚂蚁以一定概率突改路径
             R(i)=0;                     %突改路径蚂蚁路径的更新
             R_t=[R_t;r_t];               % 记录突变的路径
        end                   
    end
    R(R==0)=[];                            
    [R,Cou]=unit(R,Cou,cou);                         %记录所找到的路径
    Rt=[routen(R,:);R_t];                            %本代蚂蚁所走路径  
    cou=cou.*p;                                      %残留信息素浓度
    cou(R)=cou(R)+Cou(R);                            %更新选择路径的信息素浓度
    [cour,L]=could(R_t,d);                           %计算突变路径的信息素浓度
    routen=[routen;R_t];                             %记录所有走过的路径
    cou=[cou;cour];                                  %更新所有信息素浓度
    I0=cou<0.000001;
    cou(I0)=[];
    routen(I0,:)=[];
    xx=x(Rt)';
    yy=y(Rt)';
    Q=plot(xx,yy);
    size(Rt,1)
    if size(Rt,1)==1
        break
    end
    drawnow
   
end
%%
k

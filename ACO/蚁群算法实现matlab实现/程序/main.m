clc;clear all;close all;
%====��Ⱥ�㷨��ʵ��
%====made by haoren1990
may=0.1;            %����ͻ�����
p=0.4;               %��Ϣ�ػӷ�ϵ��
[x,y,d]=citydata;    %�����ڽӾ���
n=length(x);         %������Ŀ
m=400;               %��Ⱥ��ģ
dt=400;              %��������
%%
%====��ʼ����m��·�߼���mֻ����
for i=1:m
    routen(i,:)=randperm(n);
end
[n,mm]=size(routen);
[cou,L]=could(routen,d);        %��ÿ��·����Ϣ��Ũ��
%%
%====��ʼѭ��
for k=1:dt
    if k>1
        delete(Q);
    end
    [n,mm]=size(routen);
    nn=rand(n,1)*100;
    pp=zhh(cou);                    %����Ϣ��Ũ��ת���ɸ���
    R=found(nn,pp);                 %ÿֻ���϶���һ������ѡ��һ�����е�·��
    Cou=cou;
    Qp=rand(n,1);
    R_t=[];                         %��¼ͻ��·��
    for i=1:n                   
        if Qp(i)<may
            r_t=exchange(routen(i,:));   %������һ������ͻ��·��
             R(i)=0;                     %ͻ��·������·���ĸ���
             R_t=[R_t;r_t];               % ��¼ͻ���·��
        end                   
    end
    R(R==0)=[];                            
    [R,Cou]=unit(R,Cou,cou);                         %��¼���ҵ���·��
    Rt=[routen(R,:);R_t];                            %������������·��  
    cou=cou.*p;                                      %������Ϣ��Ũ��
    cou(R)=cou(R)+Cou(R);                            %����ѡ��·������Ϣ��Ũ��
    [cour,L]=could(R_t,d);                           %����ͻ��·������Ϣ��Ũ��
    routen=[routen;R_t];                             %��¼�����߹���·��
    cou=[cou;cour];                                  %����������Ϣ��Ũ��
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

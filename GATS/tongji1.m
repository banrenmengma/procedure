function []=tongji1()
tic
clc
conn=database('gxpl','sa','123456789');
hwait=waitbar(0,'��ȴ�>>>>>>>');
for runcount=1:20
    [FF variable]=fss4;
    aa=num2str(FF);
    bb=num2str(variable);
  
     expdata={aa,bb};
     fastinsert(conn,'gxpl.dbo.gxpl',{'pailie','fitness'},expdata);
     
   
         str=['����������',num2str(runcount*5),'%'];
         waitbar(runcount/20,hwait,str);

 end;
 close(hwait);
     toc
    
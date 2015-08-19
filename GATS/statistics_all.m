function []=statistics_all()

conn=database('gxpl','sa','123456789');

for runcount1=1:29
for runcount2=1:3
    
%car1
if runcount1==1 & runcount2==1
P =[

   375    12   142   245   412
   632   452   758   278   398
    12   876   124   534   765
   460   542   523   120   499
   528   101   789   124   999
   796   245   632   375   123
   532   230   543   896   452
    14   124   214   543   785
   257   527   753   210   463
   896   896   214   258   259
   532   302   501   765   988];

figure(1)
title('Car1'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start1_1=clock;
    [FF variable]=fss4(P);
    time_end1_1=clock;
    time1_1=etime(time_end1_1,time_start1_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time1_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Car1',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(1);
     title('Car1'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==1 & runcount2==2
P =[

   375    12   142   245   412
   632   452   758   278   398
    12   876   124   534   765
   460   542   523   120   499
   528   101   789   124   999
   796   245   632   375   123
   532   230   543   896   452
    14   124   214   543   785
   257   527   753   210   463
   896   896   214   258   259
   532   302   501   765   988];


for i=1:20
    time_start1_2=clock;
    [Nchrom result]=TS(P);
    time_end1_2=clock;
    time1_2=etime(time_end1_2,time_start1_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time1_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car1',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(1);
     title('Car1'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
     
end 

elseif runcount1==1 & runcount2==3
P =[

   375    12   142   245   412
   632   452   758   278   398
    12   876   124   534   765
   460   542   523   120   499
   528   101   789   124   999
   796   245   632   375   123
   532   230   543   896   452
    14   124   214   543   785
   257   527   753   210   463
   896   896   214   258   259
   532   302   501   765   988];


for i=1:20
    time_start1_3=clock;
    [FF variable]=GATS2(P);
    time_end1_3=clock;
    time1_3=etime(time_end1_3,time_start1_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time1_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car1',{'pailie','fitness','suanfa','time'},expdata);
    figure(1);
     title('Car1'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 


%car2
elseif runcount1==2 & runcount2==1

P =[

   654   147   345   447
   321   520   789   702
    12   147   630   255
   345   586   214   866
   678   532   275   332
   963   145   302   225
    25    24   142   589
   874   517    24   996
   114   896   520   541
   785   543   336   234
   203   210   699   784
   696   784   855   512
   302   512   221   345];

figure(2)
title('Car2'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start2_1=clock;
    [FF variable]=fss4(P);
    time_end2_1=clock;
    time2_1=etime(time_end2_1,time_start2_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time2_1;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car2',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(2);
     title('Car2'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 


elseif runcount1==2 & runcount2==2

P =[

   654   147   345   447
   321   520   789   702
    12   147   630   255
   345   586   214   866
   678   532   275   332
   963   145   302   225
    25    24   142   589
   874   517    24   996
   114   896   520   541
   785   543   336   234
   203   210   699   784
   696   784   855   512
   302   512   221   345];

for i=1:20
    time_start2_2=clock;
    [Nchrom result]=TS(P);
    time_end2_2=clock;
    time2_2=etime(time_end2_2,time_start2_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time2_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car2',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(2);
     title('Car2'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==2 & runcount2==3


P =[

   654   147   345   447
   321   520   789   702
    12   147   630   255
   345   586   214   866
   678   532   275   332
   963   145   302   225
    25    24   142   589
   874   517    24   996
   114   896   520   541
   785   543   336   234
   203   210   699   784
   696   784   855   512
   302   512   221   345];

for i=1:20
    time_start2_3=clock;
    [FF variable]=GATS2(P);
    time_end2_3=clock;
    time2_3=etime(time_end2_3,time_start2_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time2_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car2',{'pailie','fitness','suanfa','time'},expdata);
    figure(2);
     title('Car2'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end

%car3
elseif runcount1==3 & runcount2==1


P =[

   456   537   123   214   234
   789   854   225   528   123
   876   632   588   896   456
   543   145   669   325   789
   210   785   966   147   876
   123   214   332   856   543
   456   752   144   321   210
   789   143   755   427   123
   876   698   322   546   456
   543   532   100   321   789
   210   145   114   401   876
   124   247   753   245   543];

figure(3)
title('Car3'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start3_1=clock;
    [FF variable]=fss4(P);
    time_end3_1=clock;
    time3_1=etime(time_end3_1,time_start3_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time3_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Car3',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(3);
     title('Car3'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==3 & runcount2==2

P =[

   456   537   123   214   234
   789   854   225   528   123
   876   632   588   896   456
   543   145   669   325   789
   210   785   966   147   876
   123   214   332   856   543
   456   752   144   321   210
   789   143   755   427   123
   876   698   322   546   456
   543   532   100   321   789
   210   145   114   401   876
   124   247   753   245   543];

for i=1:20
    time_start3_2=clock;
    [Nchrom result]=TS(P);
    time_end3_2=clock;
    time3_2=etime(time_end3_2,time_start3_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time3_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car3',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(3);
     title('Car3'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==3 & runcount2==3


P =[

   456   537   123   214   234
   789   854   225   528   123
   876   632   588   896   456
   543   145   669   325   789
   210   785   966   147   876
   123   214   332   856   543
   456   752   144   321   210
   789   143   755   427   123
   876   698   322   546   456
   543   532   100   321   789
   210   145   114   401   876
   124   247   753   245   543];

for i=1:20
    time_start3_3=clock;
    [FF variable]=GATS2(P);
    time_end3_3=clock;
    time3_3=etime(time_end3_3,time_start3_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time3_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car3',{'pailie','fitness','suanfa','time'},expdata);
    figure(3);
     title('Car3'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end


%car4


elseif runcount1==4 & runcount2==1

P =[

   456   856   963   696
   789   930    21   320
   630   214   475   142
   214   257   320   753
   573   896   124   214
   218   532   752   528
   653   142   147   653
   214   547   532   214
   204   865   145   527
   785   321   763   536
   696   124   214   214
   532    12   257   528
    12   345   854   888
   457   678   123   999];

figure(4)
title('Car4'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start4_1=clock;
    [FF variable]=fss4(P);
    time_end4_1=clock;
    time4_1=etime(time_end4_1,time_start4_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time4_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Car4',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(4);
     title('Car4'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==4 && runcount2==2


P =[

   456   856   963   696
   789   930    21   320
   630   214   475   142
   214   257   320   753
   573   896   124   214
   218   532   752   528
   653   142   147   653
   214   547   532   214
   204   865   145   527
   785   321   763   536
   696   124   214   214
   532    12   257   528
    12   345   854   888
   457   678   123   999];

for i=1:20
    time_start4_2=clock;
    [Nchrom result]=TS(P);
    time_end4_2=clock;
    time4_2=etime(time_end4_2,time_start4_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time4_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car4',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(4);
     title('Car4'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==4 & runcount2==3


P =[

   456   856   963   696
   789   930    21   320
   630   214   475   142
   214   257   320   753
   573   896   124   214
   218   532   752   528
   653   142   147   653
   214   547   532   214
   204   865   145   527
   785   321   763   536
   696   124   214   214
   532    12   257   528
    12   345   854   888
   457   678   123   999];

for i=1:20
    time_start4_3=clock;
    [FF variable]=GATS2(P);
    time_end4_3=clock;
    time4_3=etime(time_end4_3,time_start4_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time4_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car4',{'pailie','fitness','suanfa','time'},expdata);
    figure(4);
     title('Car4'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 

%car5


elseif runcount1==5 & runcount2==1


P =[

   333   991   996   123   145   234
   333   111   663   456   785   532
   252   222   222   789   214   586
   222   204   114   876   752   532
   255   477   123   543   143   142
   555   566   456   210   698   573
   558   899   789   124   532    12
   888   965   876   537   145    14
   889   588   543   854   247   527
   999   889   210   632   451   856];

figure(5)
title('Car5'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start5_1=clock;
    [FF variable]=fss4(P);
    time_end5_1=clock;
    time5_1=etime(time_end5_1,time_start5_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time5_1;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car5',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(5);
     title('Car5'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==5 & runcount2==2


P =[

   333   991   996   123   145   234
   333   111   663   456   785   532
   252   222   222   789   214   586
   222   204   114   876   752   532
   255   477   123   543   143   142
   555   566   456   210   698   573
   558   899   789   124   532    12
   888   965   876   537   145    14
   889   588   543   854   247   527
   999   889   210   632   451   856];

for i=1:20
    time_start5_2=clock;
    [Nchrom result]=TS(P);
    time_end5_2=clock;
    time5_2=etime(time_end5_2,time_start5_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time1_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car5',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(5);
     title('Car5'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==5 & runcount2==3


P =[

   333   991   996   123   145   234
   333   111   663   456   785   532
   252   222   222   789   214   586
   222   204   114   876   752   532
   255   477   123   543   143   142
   555   566   456   210   698   573
   558   899   789   124   532    12
   888   965   876   537   145    14
   889   588   543   854   247   527
   999   889   210   632   451   856];

for i=1:20
    time_start5_3=clock;
    [FF variable]=GATS2(P);
    time_end5_3=clock;
    time5_3=etime(time_end5_3,time_start5_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time5_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car5',{'pailie','fitness','suanfa','time'},expdata);
    figure(5);
     title('Car5'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 



%car6

elseif runcount1==6 & runcount2==1


P =[

   887   447   234   159   201   555   463   456   753
   799   779   567   267   478   444   123   789    21
   999   999   852   483   520   120   456   630   427
   666   666   140   753   145   142   789   258   520
   663    25   222   420   699   578   876   741   142
   333   558   558   159   875   965   543    36   534
   222   886   965    25   633   412   210   985   157
   114   541   412   863   222    25   123   214   896];

figure(6)
title('Car6'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start6_1=clock;
    [FF variable]=fss4(P);
    time_end6_1=clock;
    time6_1=etime(time_end6_1,time_start6_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time6_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Car6',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(6);
     title('Car6'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==6 & runcount2==2


P =[

   887   447   234   159   201   555   463   456   753
   799   779   567   267   478   444   123   789    21
   999   999   852   483   520   120   456   630   427
   666   666   140   753   145   142   789   258   520
   663    25   222   420   699   578   876   741   142
   333   558   558   159   875   965   543    36   534
   222   886   965    25   633   412   210   985   157
   114   541   412   863   222    25   123   214   896];

for i=1:20
    time_start6_2=clock;
    [Nchrom result]=TS(P);
    time_end6_2=clock;
    time6_2=etime(time_end6_2,time_start6_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time6_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car6',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(6);
     title('Car6'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==6 & runcount2==3


P =[

   887   447   234   159   201   555   463   456   753
   799   779   567   267   478   444   123   789    21
   999   999   852   483   520   120   456   630   427
   666   666   140   753   145   142   789   258   520
   663    25   222   420   699   578   876   741   142
   333   558   558   159   875   965   543    36   534
   222   886   965    25   633   412   210   985   157
   114   541   412   863   222    25   123   214   896];

for i=1:20
    time_start6_3=clock;
    [FF variable]=GATS2(P);
    time_end6_3=clock;
    time6_3=etime(time_end6_3,time_start6_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time6_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car6',{'pailie','fitness','suanfa','time'},expdata);
    figure(6);
     title('Car6'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 



%car7

elseif runcount1==7 & runcount2==1


P =[

   692   310   832   630   258   147   255
   581   582    14   214   147   753   806
   475   475   785   578   852     2   699
    23   196   696   214   586   356   877
   158   325   530   785   325   565   412
   796   874   214   236   896   898   302
   542   205   578   963   325   800   120];

figure(7)
title('Car7'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start7_1=clock;
    [FF variable]=fss4(P);
    time_end7_1=clock;
    time7_1=etime(time_end7_1,time_start7_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time7_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Car7',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(7);
     title('Car7'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==7 & runcount2==2


P =[

   692   310   832   630   258   147   255
   581   582    14   214   147   753   806
   475   475   785   578   852     2   699
    23   196   696   214   586   356   877
   158   325   530   785   325   565   412
   796   874   214   236   896   898   302
   542   205   578   963   325   800   120];

for i=1:20
    time_start7_2=clock;
    [Nchrom result]=TS(P);
    time_end7_2=clock;
    time7_2=etime(time_end7_2,time_start7_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time7_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car7',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(7);
     title('Car7'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==7 & runcount2==3


P =[

   692   310   832   630   258   147   255
   581   582    14   214   147   753   806
   475   475   785   578   852     2   699
    23   196   696   214   586   356   877
   158   325   530   785   325   565   412
   796   874   214   236   896   898   302
   542   205   578   963   325   800   120];

for i=1:20
    time_start7_3=clock;
    [FF variable]=GATS2(P);
    time_end7_3=clock;
    time7_3=etime(time_end7_3,time_start7_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time7_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car7',{'pailie','fitness','suanfa','time'},expdata);
    figure(7);
     title('Car7'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 



%car8

elseif runcount1==8 & runcount2==1


P =[

   456   654   852   145   632   425   214   654
   789   123   369   678   581   396   123   789
   654   123   632   965   475   325   456   654
   321   456   581   421    32   147   789   123
   456   789   472   365   536   852   654   123
   789   654   586   824   325    12   321   456
   654   321   320   758   863   452   456   789
   789   147   120   639    21   863   789   654];

figure(8)
title('Car8'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start8_1=clock;
    [FF variable]=fss4(P);
    time_end8_1=clock;
    time8_1=etime(time_end8_1,time_start8_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time8_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Car8',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(8);
     title('Car8'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==8 & runcount2==2


P =[

   456   654   852   145   632   425   214   654
   789   123   369   678   581   396   123   789
   654   123   632   965   475   325   456   654
   321   456   581   421    32   147   789   123
   456   789   472   365   536   852   654   123
   789   654   586   824   325    12   321   456
   654   321   320   758   863   452   456   789
   789   147   120   639    21   863   789   654];

for i=1:20
    time_start8_2=clock;
    [Nchrom result]=TS(P);
    time_end8_2=clock;
    time8_2=etime(time_end8_2,time_start8_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time8_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car8',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(8);
     title('Car8'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==8 & runcount2==3


P =[

   456   654   852   145   632   425   214   654
   789   123   369   678   581   396   123   789
   654   123   632   965   475   325   456   654
   321   456   581   421    32   147   789   123
   456   789   472   365   536   852   654   123
   789   654   586   824   325    12   321   456
   654   321   320   758   863   452   456   789
   789   147   120   639    21   863   789   654];

for i=1:20
    time_start8_3=clock;
    [FF variable]=GATS2(P);
    time_end8_3=clock;
    time8_3=etime(time_end8_3,time_start8_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time8_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Car8',{'pailie','fitness','suanfa','time'},expdata);
    figure(8);
     title('Car8'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 




%reC01

elseif runcount1==9 & runcount2==1


P = [
    
   5   76   74   99   26
  74   21   83   52   90
  67   48    6   66   38
  97   36   71   68   81
  87   86   64   11   31
   1   42   20   90   23
  69   32   99   26   57
  69   12   54   80   16
  11   63   24   16   89
  87   52   43   10   26
  25   59   88   87   40
  50   42   72   77   29
  58   76   71   82   94
  79   48   20   63   97
  35   57   78   99   80
  70   76   53    2   19
  79   22   77   74   95
  34   99   49    3   61
  37   24   32   35    4
  50   88   46   63   76];

figure(9)
title('Rec01'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start9_1=clock;
    [FF variable]=fss4(P);
    time_end9_1=clock;
    time9_1=etime(time_end9_1,time_start9_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time9_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec01',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(9);
     title('Rec01'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==9 & runcount2==2


P = [
    
   5   76   74   99   26
  74   21   83   52   90
  67   48    6   66   38
  97   36   71   68   81
  87   86   64   11   31
   1   42   20   90   23
  69   32   99   26   57
  69   12   54   80   16
  11   63   24   16   89
  87   52   43   10   26
  25   59   88   87   40
  50   42   72   77   29
  58   76   71   82   94
  79   48   20   63   97
  35   57   78   99   80
  70   76   53    2   19
  79   22   77   74   95
  34   99   49    3   61
  37   24   32   35    4
  50   88   46   63   76];

for i=1:20
    time_start9_2=clock;
    [Nchrom result]=TS(P);
    time_end9_2=clock;
    time9_2=etime(time_end9_2,time_start9_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time9_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec01',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(9);
     title('Rec01'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==9 & runcount2==3


P = [
    
   5   76   74   99   26
  74   21   83   52   90
  67   48    6   66   38
  97   36   71   68   81
  87   86   64   11   31
   1   42   20   90   23
  69   32   99   26   57
  69   12   54   80   16
  11   63   24   16   89
  87   52   43   10   26
  25   59   88   87   40
  50   42   72   77   29
  58   76   71   82   94
  79   48   20   63   97
  35   57   78   99   80
  70   76   53    2   19
  79   22   77   74   95
  34   99   49    3   61
  37   24   32   35    4
  50   88   46   63   76];

for i=1:20
    time_start9_3=clock;
    [FF variable]=GATS2(P);
    time_end9_3=clock;
    time9_3=etime(time_end9_3,time_start9_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time9_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec01',{'pailie','fitness','suanfa','time'},expdata);
    figure(9);
     title('Rec01'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 
  


%reC03

elseif runcount1==10 & runcount2==1


P=[ 34     6    63    85    60
    11    65     4     1    73
    63    67     3    73   100
    22    46    88     1    66
    76     4    34     9    76
    20    22     7     3    28
    44    30    55    68    92
    29    89    12    96    71
    54    12    21    74     2
    62    96    61    79    53
    50    13    48    40    37
    89    69    57     1    70
    50    56     8    67    46
    32    24    23    87    62
    12    88    64    14    13
    59    78    95    59    48
    41    20    83    65    20
    94    48    26    93     3
    28    59    10    81    20
    66    33    34     8     5];

figure(10)
title('Rec03'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start10_1=clock;
    [FF variable]=fss4(P);
    time_end10_1=clock;
    time10_1=etime(time_end10_1,time_start10_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time10_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec03',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(10);
     title('Rec03'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==10 & runcount2==2


P=[ 34     6    63    85    60
    11    65     4     1    73
    63    67     3    73   100
    22    46    88     1    66
    76     4    34     9    76
    20    22     7     3    28
    44    30    55    68    92
    29    89    12    96    71
    54    12    21    74     2
    62    96    61    79    53
    50    13    48    40    37
    89    69    57     1    70
    50    56     8    67    46
    32    24    23    87    62
    12    88    64    14    13
    59    78    95    59    48
    41    20    83    65    20
    94    48    26    93     3
    28    59    10    81    20
    66    33    34     8     5];

for i=1:20
    time_start10_2=clock;
    [Nchrom result]=TS(P);
    time_end10_2=clock;
    time10_2=etime(time_end10_2,time_start10_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time10_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec03',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(10);
     title('Rec03'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==10 & runcount2==3


P=[ 34     6    63    85    60
    11    65     4     1    73
    63    67     3    73   100
    22    46    88     1    66
    76     4    34     9    76
    20    22     7     3    28
    44    30    55    68    92
    29    89    12    96    71
    54    12    21    74     2
    62    96    61    79    53
    50    13    48    40    37
    89    69    57     1    70
    50    56     8    67    46
    32    24    23    87    62
    12    88    64    14    13
    59    78    95    59    48
    41    20    83    65    20
    94    48    26    93     3
    28    59    10    81    20
    66    33    34     8     5];

for i=1:20
    time_start10_3=clock;
    [FF variable]=GATS2(P);
    time_end10_3=clock;
    time10_3=etime(time_end10_3,time_start10_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time10_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec03',{'pailie','fitness','suanfa','time'},expdata);
    figure(10);
     title('Rec03'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 



%reC05

elseif runcount1==11 & runcount2==1


P=[ 59    37    67    39    30
    89    41    42    59    43
    18    56    75    95    75
    65    67    50    57    13
     1    79    71    78    88
    49   100    30    76    36
    99     9    34    44    62
    35    46    58    26    73
     8    98    97    20    73
    39    73    20    55    30
    60    18    97    61    22
    71     1     4    88    52
    76    30    51    77    22
    30    98    25    43     5
    77    36    76    16    45
     5    82    64    13    14
    98    84     4    34    26
    79    28    84    69    36
    38    36    47    86     1
    69    19    54    83    97];

figure(11)
title('Rec05'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start11_1=clock;
    [FF variable]=fss4(P);
    time_end11_1=clock;
    time11_1=etime(time_end11_1,time_start11_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time11_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec05',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(11);
     title('Rec05'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==11 & runcount2==2


P=[ 59    37    67    39    30
    89    41    42    59    43
    18    56    75    95    75
    65    67    50    57    13
     1    79    71    78    88
    49   100    30    76    36
    99     9    34    44    62
    35    46    58    26    73
     8    98    97    20    73
    39    73    20    55    30
    60    18    97    61    22
    71     1     4    88    52
    76    30    51    77    22
    30    98    25    43     5
    77    36    76    16    45
     5    82    64    13    14
    98    84     4    34    26
    79    28    84    69    36
    38    36    47    86     1
    69    19    54    83    97];

for i=1:20
    time_start11_2=clock;
    [Nchrom result]=TS(P);
    time_end11_2=clock;
    time11_2=etime(time_end11_2,time_start11_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time11_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec05',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(11);
     title('Rec05'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==11 & runcount2==3


P=[ 59    37    67    39    30
    89    41    42    59    43
    18    56    75    95    75
    65    67    50    57    13
     1    79    71    78    88
    49   100    30    76    36
    99     9    34    44    62
    35    46    58    26    73
     8    98    97    20    73
    39    73    20    55    30
    60    18    97    61    22
    71     1     4    88    52
    76    30    51    77    22
    30    98    25    43     5
    77    36    76    16    45
     5    82    64    13    14
    98    84     4    34    26
    79    28    84    69    36
    38    36    47    86     1
    69    19    54    83    97];

for i=1:20
    time_start11_3=clock;
    [FF variable]=GATS2(P);
    time_end11_3=clock;
    time11_3=etime(time_end11_3,time_start11_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time11_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec05',{'pailie','fitness','suanfa','time'},expdata);
    figure(11);
     title('Rec05'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 



%reC07

elseif runcount1==12 & runcount2==1


P=[ 28    18    38    11    97    23    90    52    79    63
    50    30    75    82    38    39    28    84    48    57
    75    50    33    58    56    41    51    29    75    97
    65    42    66    29    36    29    10    84    14    67
    84    68    42    41    86    23    95    30    73    97
    33    72    79    85    81    51    72    19    48    48
    91    66    87    88    97    36    21    59    61     4
    51    23   100    93    48    84    74     7    98    55
    58    61    17    54    25    71    52    47    49    86
    44    27    40    19    34    33     3    89    39    66
    70    94     7    19    31    48    38    48    73    34
    60    38    34    55    63    28    70    35    68    88
    39    33    53    87     2     6    51    42    93    67
    72    35    45    20    84    23    10    34     8    48
   100    71    80    89    47    15    90    33    97    26
    79    23    57    54    70    99    85     5     9     4
    14    23    36    79     4    65    78    51    95    79
     3    32    81    26    19    59    80    90    44    33
    68    33    94    37    33    74    64    50    22    17
    94    17    54    27    55    34     7    56    10    41];

figure(12)
title('Rec07'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start12_1=clock;
    [FF variable]=fss4(P);
    time_end12_1=clock;
    time12_1=etime(time_end12_1,time_start12_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time12_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec07',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(12);
     title('Rec07'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==12 & runcount2==2


P=[ 28    18    38    11    97    23    90    52    79    63
    50    30    75    82    38    39    28    84    48    57
    75    50    33    58    56    41    51    29    75    97
    65    42    66    29    36    29    10    84    14    67
    84    68    42    41    86    23    95    30    73    97
    33    72    79    85    81    51    72    19    48    48
    91    66    87    88    97    36    21    59    61     4
    51    23   100    93    48    84    74     7    98    55
    58    61    17    54    25    71    52    47    49    86
    44    27    40    19    34    33     3    89    39    66
    70    94     7    19    31    48    38    48    73    34
    60    38    34    55    63    28    70    35    68    88
    39    33    53    87     2     6    51    42    93    67
    72    35    45    20    84    23    10    34     8    48
   100    71    80    89    47    15    90    33    97    26
    79    23    57    54    70    99    85     5     9     4
    14    23    36    79     4    65    78    51    95    79
     3    32    81    26    19    59    80    90    44    33
    68    33    94    37    33    74    64    50    22    17
    94    17    54    27    55    34     7    56    10    41];

for i=1:20
    time_start12_2=clock;
    [Nchrom result]=TS(P);
    time_end12_2=clock;
    time12_2=etime(time_end12_2,time_start12_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time12_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec07',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(12);
     title('Rec07'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==12 & runcount2==3


P=[ 28    18    38    11    97    23    90    52    79    63
    50    30    75    82    38    39    28    84    48    57
    75    50    33    58    56    41    51    29    75    97
    65    42    66    29    36    29    10    84    14    67
    84    68    42    41    86    23    95    30    73    97
    33    72    79    85    81    51    72    19    48    48
    91    66    87    88    97    36    21    59    61     4
    51    23   100    93    48    84    74     7    98    55
    58    61    17    54    25    71    52    47    49    86
    44    27    40    19    34    33     3    89    39    66
    70    94     7    19    31    48    38    48    73    34
    60    38    34    55    63    28    70    35    68    88
    39    33    53    87     2     6    51    42    93    67
    72    35    45    20    84    23    10    34     8    48
   100    71    80    89    47    15    90    33    97    26
    79    23    57    54    70    99    85     5     9     4
    14    23    36    79     4    65    78    51    95    79
     3    32    81    26    19    59    80    90    44    33
    68    33    94    37    33    74    64    50    22    17
    94    17    54    27    55    34     7    56    10    41];

for i=1:20
    time_start12_3=clock;
    [FF variable]=GATS2(P);
    time_end12_3=clock;
    time12_3=etime(time_end12_3,time_start12_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time12_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec07',{'pailie','fitness','suanfa','time'},expdata);
    figure(12);
     title('Rec07'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 



%reC09
elseif runcount1==13 & runcount2==1


P=[77    95    41    97    47    45    10    41    72     8
    99    28    42     4     7    30    65    45    51    94
    74    25    92    29     4    21    47    36    61     9
     4    21    40    80    66    85     1    33     1     4
    49    95    96    74    96    63    59    84    70    29
    53    59    75    19    13    50    82    60     9    13
    88    47    28    11    86    90    93    38    33    59
    92    99    84    13    73    55    19    93    74    25
     2    49    86    46    58    42    24    79    12    17
    97    18    28    77    92    54    49    24    19    71
    28    93    93     7    25    89    49    11    93    45
    64    22    91    56    46    27    32    70    94     5
    25    96    98    51    21    20    93    64    86    11
    19    41    87    15    31    78    54    74    71     6
    81     1    74    56     8    55     3    92    28     5
     9    29    49    48    72    38    26     3    49    80
     5    74    19    27    71    35    52    76    79    47
     8    66    40    71    17    61    84    49    52    56
    34     7    58    94    22    27    40    19    26    77
    13    56    45    27    40    26    90    28    27    88];


figure(13)
title('Rec09'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start13_1=clock;
    [FF variable]=fss4(P);
    time_end13_1=clock;
    time13_1=etime(time_end13_1,time_start13_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time13_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec09',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(13);
     title('Rec09'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==13 & runcount2==2


P=[77    95    41    97    47    45    10    41    72     8
    99    28    42     4     7    30    65    45    51    94
    74    25    92    29     4    21    47    36    61     9
     4    21    40    80    66    85     1    33     1     4
    49    95    96    74    96    63    59    84    70    29
    53    59    75    19    13    50    82    60     9    13
    88    47    28    11    86    90    93    38    33    59
    92    99    84    13    73    55    19    93    74    25
     2    49    86    46    58    42    24    79    12    17
    97    18    28    77    92    54    49    24    19    71
    28    93    93     7    25    89    49    11    93    45
    64    22    91    56    46    27    32    70    94     5
    25    96    98    51    21    20    93    64    86    11
    19    41    87    15    31    78    54    74    71     6
    81     1    74    56     8    55     3    92    28     5
     9    29    49    48    72    38    26     3    49    80
     5    74    19    27    71    35    52    76    79    47
     8    66    40    71    17    61    84    49    52    56
    34     7    58    94    22    27    40    19    26    77
    13    56    45    27    40    26    90    28    27    88];


for i=1:20
    time_start13_2=clock;
    [Nchrom result]=TS(P);
    time_end13_2=clock;
    time13_2=etime(time_end13_2,time_start13_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time13_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec09',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(13);
     title('Rec09'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==13 & runcount2==3


P=[77    95    41    97    47    45    10    41    72     8
    99    28    42     4     7    30    65    45    51    94
    74    25    92    29     4    21    47    36    61     9
     4    21    40    80    66    85     1    33     1     4
    49    95    96    74    96    63    59    84    70    29
    53    59    75    19    13    50    82    60     9    13
    88    47    28    11    86    90    93    38    33    59
    92    99    84    13    73    55    19    93    74    25
     2    49    86    46    58    42    24    79    12    17
    97    18    28    77    92    54    49    24    19    71
    28    93    93     7    25    89    49    11    93    45
    64    22    91    56    46    27    32    70    94     5
    25    96    98    51    21    20    93    64    86    11
    19    41    87    15    31    78    54    74    71     6
    81     1    74    56     8    55     3    92    28     5
     9    29    49    48    72    38    26     3    49    80
     5    74    19    27    71    35    52    76    79    47
     8    66    40    71    17    61    84    49    52    56
    34     7    58    94    22    27    40    19    26    77
    13    56    45    27    40    26    90    28    27    88];


for i=1:20
    time_start13_3=clock;
    [FF variable]=GATS2(P);
    time_end13_3=clock;
    time13_3=etime(time_end13_3,time_start13_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time13_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec09',{'pailie','fitness','suanfa','time'},expdata);
    figure(13);
     title('Rec09'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 



%reC11

elseif runcount1==14 & runcount2==1


P=[ 96    80    56    48    14    88    50    15    67    65
    25    44    10    41    64    52    19    28    72    27
    76    62    48    54    47    35    72    54    27    56
    41     6     3    33    77    44    43    50    19    43
    65    91    75    30    47    55    51     1    36    73
    81    69    65    93    61     3    44    17     6    14
    49     9    12    54    75    66    34    12    32     6
    93    89    31    14    37    57    33    96    32    45
    39    83    55    32    18     9    93    65    75    73
    52    46    64    13    54    62    45    80    19    65
    72     4    29    94    85    51    29    65    50    16
    55    43    47    32    87    97    41    86    17    30
     8    91    81    93    14    86    64    42    70     3
    27    11    94    38    33    67     8    55    99    18
    34    86    87    10    64    30    47    51    69    26
    15     5    39    23    16     1    57    55    62    35
    59    55    43    49    23    25    51    72     9     1
    93     4    43     5    84    55    22    78    31    11
    20    91    73    41   100    38    75     9    76    71
    59    13    93    26    11     7    66    42    54    99];

figure(14)
title('Rec11'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start14_1=clock;
    [FF variable]=fss4(P);
    time_end14_1=clock;
    time14_1=etime(time_end14_1,time_start14_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time14_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec11',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(14);
     title('Rec11'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==14 & runcount2==2


P=[ 96    80    56    48    14    88    50    15    67    65
    25    44    10    41    64    52    19    28    72    27
    76    62    48    54    47    35    72    54    27    56
    41     6     3    33    77    44    43    50    19    43
    65    91    75    30    47    55    51     1    36    73
    81    69    65    93    61     3    44    17     6    14
    49     9    12    54    75    66    34    12    32     6
    93    89    31    14    37    57    33    96    32    45
    39    83    55    32    18     9    93    65    75    73
    52    46    64    13    54    62    45    80    19    65
    72     4    29    94    85    51    29    65    50    16
    55    43    47    32    87    97    41    86    17    30
     8    91    81    93    14    86    64    42    70     3
    27    11    94    38    33    67     8    55    99    18
    34    86    87    10    64    30    47    51    69    26
    15     5    39    23    16     1    57    55    62    35
    59    55    43    49    23    25    51    72     9     1
    93     4    43     5    84    55    22    78    31    11
    20    91    73    41   100    38    75     9    76    71
    59    13    93    26    11     7    66    42    54    99];

for i=1:20
    time_start14_2=clock;
    [Nchrom result]=TS(P);
    time_end14_2=clock;
    time14_2=etime(time_end14_2,time_start14_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time14_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec11',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(14);
     title('Rec11'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==14 & runcount2==3


P=[ 96    80    56    48    14    88    50    15    67    65
    25    44    10    41    64    52    19    28    72    27
    76    62    48    54    47    35    72    54    27    56
    41     6     3    33    77    44    43    50    19    43
    65    91    75    30    47    55    51     1    36    73
    81    69    65    93    61     3    44    17     6    14
    49     9    12    54    75    66    34    12    32     6
    93    89    31    14    37    57    33    96    32    45
    39    83    55    32    18     9    93    65    75    73
    52    46    64    13    54    62    45    80    19    65
    72     4    29    94    85    51    29    65    50    16
    55    43    47    32    87    97    41    86    17    30
     8    91    81    93    14    86    64    42    70     3
    27    11    94    38    33    67     8    55    99    18
    34    86    87    10    64    30    47    51    69    26
    15     5    39    23    16     1    57    55    62    35
    59    55    43    49    23    25    51    72     9     1
    93     4    43     5    84    55    22    78    31    11
    20    91    73    41   100    38    75     9    76    71
    59    13    93    26    11     7    66    42    54    99];

for i=1:20
    time_start14_3=clock;
    [FF variable]=GATS2(P);
    time_end14_3=clock;
    time14_3=etime(time_end14_3,time_start14_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time14_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec11',{'pailie','fitness','suanfa','time'},expdata);
    figure(14);
     title('Rec11'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 




%reC13

elseif runcount1==15 & runcount2==1


P =[
    
   78   37   79   98  100   21   82   27    7   22    9   57   84   91    5
   13   81  100   77   45   39   60   87   38   91   17   85   43   81   33
   47    9   31   40   86   27   69   50   87   34   13   15   95   96   72
   26   61    5   22   26   52   57   97   10   68    8   49   41   16   35
   68   41   46   58   37   59   22   43   49   21   42   70   12    2   76
   47   60   23   23   57   60   35   56   54   73   81   61   15   70   51
   63   21   10   50   12   84   91    7   44   75   60   72   28   83   52
   52  100   38   79   90   52   81   54   51   11   76   50   24   12   23
   91   21   59   55   39   75    3   11   14   24   36   72   48   69   55
  100   54   77   53   90   91   59   68   18   86   28   61   86   36   15
   63   58   93   24   18   78   74   57  100   92   51   73    6   12   83
   96   60   79   84   86   31   41   79   63   17   31   65   41   77   74
   54   55   89   77   40   71   21   43   60   58   13    3   73   44   85
   50   33   51  100   46   27   30   80   56   50   97   70    9   22   92
   17    7   12   66   98   25   76   25   76   25   69   69   73   45   74
   46   76   32   32   28   48   63   92   85   69   24   38   57   21   66
   91   42   30   39   97   72   96   78   71   75   17   26   94    3   39
   99   93   57   23   52   89    4   74   21   10   53   94   59  100   68
   20   84   25    1   72   63   79   63   17   38   21   36    1   73   58
   18    4   21   43   55   86   99   38   81   74   34   40   61   76  100];

figure(15)
title('Rec13'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start15_1=clock;
    [FF variable]=fss4(P);
    time_end15_1=clock;
    time15_1=etime(time_end15_1,time_start15_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time15_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec13',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(15);
     title('Rec13'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==15 & runcount2==2


P =[
    
   78   37   79   98  100   21   82   27    7   22    9   57   84   91    5
   13   81  100   77   45   39   60   87   38   91   17   85   43   81   33
   47    9   31   40   86   27   69   50   87   34   13   15   95   96   72
   26   61    5   22   26   52   57   97   10   68    8   49   41   16   35
   68   41   46   58   37   59   22   43   49   21   42   70   12    2   76
   47   60   23   23   57   60   35   56   54   73   81   61   15   70   51
   63   21   10   50   12   84   91    7   44   75   60   72   28   83   52
   52  100   38   79   90   52   81   54   51   11   76   50   24   12   23
   91   21   59   55   39   75    3   11   14   24   36   72   48   69   55
  100   54   77   53   90   91   59   68   18   86   28   61   86   36   15
   63   58   93   24   18   78   74   57  100   92   51   73    6   12   83
   96   60   79   84   86   31   41   79   63   17   31   65   41   77   74
   54   55   89   77   40   71   21   43   60   58   13    3   73   44   85
   50   33   51  100   46   27   30   80   56   50   97   70    9   22   92
   17    7   12   66   98   25   76   25   76   25   69   69   73   45   74
   46   76   32   32   28   48   63   92   85   69   24   38   57   21   66
   91   42   30   39   97   72   96   78   71   75   17   26   94    3   39
   99   93   57   23   52   89    4   74   21   10   53   94   59  100   68
   20   84   25    1   72   63   79   63   17   38   21   36    1   73   58
   18    4   21   43   55   86   99   38   81   74   34   40   61   76  100];

for i=1:20
    time_start15_2=clock;
    [Nchrom result]=TS(P);
    time_end15_2=clock;
    time15_2=etime(time_end15_2,time_start15_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time15_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec13',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(15);
     title('Rec13'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==15 & runcount2==3


P =[
    
   78   37   79   98  100   21   82   27    7   22    9   57   84   91    5
   13   81  100   77   45   39   60   87   38   91   17   85   43   81   33
   47    9   31   40   86   27   69   50   87   34   13   15   95   96   72
   26   61    5   22   26   52   57   97   10   68    8   49   41   16   35
   68   41   46   58   37   59   22   43   49   21   42   70   12    2   76
   47   60   23   23   57   60   35   56   54   73   81   61   15   70   51
   63   21   10   50   12   84   91    7   44   75   60   72   28   83   52
   52  100   38   79   90   52   81   54   51   11   76   50   24   12   23
   91   21   59   55   39   75    3   11   14   24   36   72   48   69   55
  100   54   77   53   90   91   59   68   18   86   28   61   86   36   15
   63   58   93   24   18   78   74   57  100   92   51   73    6   12   83
   96   60   79   84   86   31   41   79   63   17   31   65   41   77   74
   54   55   89   77   40   71   21   43   60   58   13    3   73   44   85
   50   33   51  100   46   27   30   80   56   50   97   70    9   22   92
   17    7   12   66   98   25   76   25   76   25   69   69   73   45   74
   46   76   32   32   28   48   63   92   85   69   24   38   57   21   66
   91   42   30   39   97   72   96   78   71   75   17   26   94    3   39
   99   93   57   23   52   89    4   74   21   10   53   94   59  100   68
   20   84   25    1   72   63   79   63   17   38   21   36    1   73   58
   18    4   21   43   55   86   99   38   81   74   34   40   61   76  100];

for i=1:20
    time_start15_3=clock;
    [FF variable]=GATS2(P);
    time_end15_3=clock;
    time15_3=etime(time_end15_3,time_start15_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time15_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec13',{'pailie','fitness','suanfa','time'},expdata);
    figure(15);
     title('Rec13'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 
 


%reC15

elseif runcount1==16 & runcount2==1


P=[ 60    70    51    74     6     4    27     5    30    79    58    49    91    20    63
    79    53    74    87    18    16    44    95    41     3    20    59    74    33    42
    94    57    19    77    70    90    36    73    37    24    28    23    16    97    75
    23     3    82    87    45    54    76    60    61    98    68    14    10    17     9
    38    32    68     7    49    49    72    31    70     8    26    81    86    60    74
    27    14    77    20    92    74    33    44    43    52    10    81    30    93    71
    23    55    67     6    64    68    19    73    92    96     3    21    51     3    25
    41    91    90    43    37    96    99    46    41    51    33    49    17    64    68
    92    44    12    37    75    20    14    43    26    64    85    14    54    54    97
    69    69    71    54    36    96     3    27    16    61    94    96    85    34    34
    16    38    36    48    92    20    55    89    75    57    89    62    36    36    69
    37    19    55     2    96    10    81    29     2    34    83     1    45    23    64
     4    57    26    29    91    94    21    30    30    51    31    62    53    29    51
    55    65    21    99    27    53    42    78    63    25    86    60    64    76    69
    17    70    33    81    24    35    77    21    83    19    44    70    90    34    90
    76    94    54    34    12    28    24     5    59     4    46    93    32    78    48
    81    49    83    72    31    72    91     8    40    93    84    63    67    36    84
    63    70    14    85    66    41    64    54    10    65    26    58    20    64    41
    98    39    91     5    55    28    43    97    35    23    50    99    59    63    95
    47    48    89    33    99    10    54    94    52    44    73    67    44    36    98
];

figure(16)
title('Rec15'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start16_1=clock;
    [FF variable]=fss4(P);
    time_end16_1=clock;
    time16_1=etime(time_end16_1,time_start16_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time16_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec15',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(16);
     title('Rec15'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==16 & runcount2==2


P=[ 60    70    51    74     6     4    27     5    30    79    58    49    91    20    63
    79    53    74    87    18    16    44    95    41     3    20    59    74    33    42
    94    57    19    77    70    90    36    73    37    24    28    23    16    97    75
    23     3    82    87    45    54    76    60    61    98    68    14    10    17     9
    38    32    68     7    49    49    72    31    70     8    26    81    86    60    74
    27    14    77    20    92    74    33    44    43    52    10    81    30    93    71
    23    55    67     6    64    68    19    73    92    96     3    21    51     3    25
    41    91    90    43    37    96    99    46    41    51    33    49    17    64    68
    92    44    12    37    75    20    14    43    26    64    85    14    54    54    97
    69    69    71    54    36    96     3    27    16    61    94    96    85    34    34
    16    38    36    48    92    20    55    89    75    57    89    62    36    36    69
    37    19    55     2    96    10    81    29     2    34    83     1    45    23    64
     4    57    26    29    91    94    21    30    30    51    31    62    53    29    51
    55    65    21    99    27    53    42    78    63    25    86    60    64    76    69
    17    70    33    81    24    35    77    21    83    19    44    70    90    34    90
    76    94    54    34    12    28    24     5    59     4    46    93    32    78    48
    81    49    83    72    31    72    91     8    40    93    84    63    67    36    84
    63    70    14    85    66    41    64    54    10    65    26    58    20    64    41
    98    39    91     5    55    28    43    97    35    23    50    99    59    63    95
    47    48    89    33    99    10    54    94    52    44    73    67    44    36    98
];

for i=1:20
    time_start16_2=clock;
    [Nchrom result]=TS(P);
    time_end16_2=clock;
    time16_2=etime(time_end16_2,time_start16_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time16_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec15',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(16);
     title('Rec15'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==16 & runcount2==3


P=[ 60    70    51    74     6     4    27     5    30    79    58    49    91    20    63
    79    53    74    87    18    16    44    95    41     3    20    59    74    33    42
    94    57    19    77    70    90    36    73    37    24    28    23    16    97    75
    23     3    82    87    45    54    76    60    61    98    68    14    10    17     9
    38    32    68     7    49    49    72    31    70     8    26    81    86    60    74
    27    14    77    20    92    74    33    44    43    52    10    81    30    93    71
    23    55    67     6    64    68    19    73    92    96     3    21    51     3    25
    41    91    90    43    37    96    99    46    41    51    33    49    17    64    68
    92    44    12    37    75    20    14    43    26    64    85    14    54    54    97
    69    69    71    54    36    96     3    27    16    61    94    96    85    34    34
    16    38    36    48    92    20    55    89    75    57    89    62    36    36    69
    37    19    55     2    96    10    81    29     2    34    83     1    45    23    64
     4    57    26    29    91    94    21    30    30    51    31    62    53    29    51
    55    65    21    99    27    53    42    78    63    25    86    60    64    76    69
    17    70    33    81    24    35    77    21    83    19    44    70    90    34    90
    76    94    54    34    12    28    24     5    59     4    46    93    32    78    48
    81    49    83    72    31    72    91     8    40    93    84    63    67    36    84
    63    70    14    85    66    41    64    54    10    65    26    58    20    64    41
    98    39    91     5    55    28    43    97    35    23    50    99    59    63    95
    47    48    89    33    99    10    54    94    52    44    73    67    44    36    98
];

for i=1:20
    time_start16_3=clock;
    [FF variable]=GATS2(P);
    time_end16_3=clock;
    time16_3=etime(time_end16_3,time_start16_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time16_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec15',{'pailie','fitness','suanfa','time'},expdata);
    figure(16);
     title('Rec15'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 



%reC17

elseif runcount1==17 & runcount2==1


P=[59    11     4    79    94    31    74    82    53    51    19    31    46    47    10
    72    54    36     3    59    23    40    59    89    37    85    67    39    65    60
    92    26    15    81    86    56    92    47    93    21    40    77    84    10    91
    49    27    99    64    30    51    26    89    40    64    60    67    67   100     3
    42    12    55    62    37    24    24    42    41    88    14    33    85     4    20
    21    61    52    49    44    98    26    68    61    25     6    46    75    37     5
    80    99    88    83    11    93    47    80   100    87    84    17    43    93    58
     4    54    43    63    44    78    44    39    76    99    29    38    14    75    25
    46    23    54    77    60    53    42    72    90    11    22    68    94    24    14
    23    84    92    94     8    10    77    58    64    95    55    15    19    62    67
    53    91    80     8    41    89     3    87    57    75    37     8    23    88    65
    72    17    53    36     9    24    80     9    28    60    94    99    67    10    44
     5    44    96    37    21    44    49    13    86    74    89     3    82    85    61
    80    19    73    95    78    78    31    13    50    93    98    80    46     9    37
     7    16    46    82    97    82    41    21    11    50     5    28    95    84    45
    68    73    57     4    66    71    87    43    60    56    30    21    14    37    61
    77     2     1    82     2    49    89    27    34    52    85    26    80    87    58
    17    86    32    35     6    50    53    39    94    89    22    75    59    74    27
    61    14    70    58    24    36    70    57    31   100    21    76    54    94    57
    29     6     6    12    78    28    40    13    61    19    39    98    69    14     3
];

figure(17)
title('Rec17'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start17_1=clock;
    [FF variable]=fss4(P);
    time_end17_1=clock;
    time17_1=etime(time_end17_1,time_start17_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time17_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec17',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(17);
     title('Rec17'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==17 & runcount2==2


P=[59    11     4    79    94    31    74    82    53    51    19    31    46    47    10
    72    54    36     3    59    23    40    59    89    37    85    67    39    65    60
    92    26    15    81    86    56    92    47    93    21    40    77    84    10    91
    49    27    99    64    30    51    26    89    40    64    60    67    67   100     3
    42    12    55    62    37    24    24    42    41    88    14    33    85     4    20
    21    61    52    49    44    98    26    68    61    25     6    46    75    37     5
    80    99    88    83    11    93    47    80   100    87    84    17    43    93    58
     4    54    43    63    44    78    44    39    76    99    29    38    14    75    25
    46    23    54    77    60    53    42    72    90    11    22    68    94    24    14
    23    84    92    94     8    10    77    58    64    95    55    15    19    62    67
    53    91    80     8    41    89     3    87    57    75    37     8    23    88    65
    72    17    53    36     9    24    80     9    28    60    94    99    67    10    44
     5    44    96    37    21    44    49    13    86    74    89     3    82    85    61
    80    19    73    95    78    78    31    13    50    93    98    80    46     9    37
     7    16    46    82    97    82    41    21    11    50     5    28    95    84    45
    68    73    57     4    66    71    87    43    60    56    30    21    14    37    61
    77     2     1    82     2    49    89    27    34    52    85    26    80    87    58
    17    86    32    35     6    50    53    39    94    89    22    75    59    74    27
    61    14    70    58    24    36    70    57    31   100    21    76    54    94    57
    29     6     6    12    78    28    40    13    61    19    39    98    69    14     3
];

for i=1:20
    time_start17_2=clock;
    [Nchrom result]=TS(P);
    time_end17_2=clock;
    time17_2=etime(time_end17_2,time_start17_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time17_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec17',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(17);
     title('Rec17'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==17 & runcount2==3


P=[59    11     4    79    94    31    74    82    53    51    19    31    46    47    10
    72    54    36     3    59    23    40    59    89    37    85    67    39    65    60
    92    26    15    81    86    56    92    47    93    21    40    77    84    10    91
    49    27    99    64    30    51    26    89    40    64    60    67    67   100     3
    42    12    55    62    37    24    24    42    41    88    14    33    85     4    20
    21    61    52    49    44    98    26    68    61    25     6    46    75    37     5
    80    99    88    83    11    93    47    80   100    87    84    17    43    93    58
     4    54    43    63    44    78    44    39    76    99    29    38    14    75    25
    46    23    54    77    60    53    42    72    90    11    22    68    94    24    14
    23    84    92    94     8    10    77    58    64    95    55    15    19    62    67
    53    91    80     8    41    89     3    87    57    75    37     8    23    88    65
    72    17    53    36     9    24    80     9    28    60    94    99    67    10    44
     5    44    96    37    21    44    49    13    86    74    89     3    82    85    61
    80    19    73    95    78    78    31    13    50    93    98    80    46     9    37
     7    16    46    82    97    82    41    21    11    50     5    28    95    84    45
    68    73    57     4    66    71    87    43    60    56    30    21    14    37    61
    77     2     1    82     2    49    89    27    34    52    85    26    80    87    58
    17    86    32    35     6    50    53    39    94    89    22    75    59    74    27
    61    14    70    58    24    36    70    57    31   100    21    76    54    94    57
    29     6     6    12    78    28    40    13    61    19    39    98    69    14     3
];

for i=1:20
    time_start17_3=clock;
    [FF variable]=GATS2(P);
    time_end17_3=clock;
    time17_3=etime(time_end17_3,time_start17_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time17_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec17',{'pailie','fitness','suanfa','time'},expdata);
    figure(17);
     title('Rec17'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 




%reC19

elseif runcount1==18 & runcount2==1


P =[
    
   40   16   50   59  100   78   38   76    9   68
   39    3   35   70   65   80   40   49   52   50
   31   56   88   71   83   59   48   98   88   96
   65   77   58   66   86   93   69   49   85   51
   11    5   75   12   56   64   20    6   83   49
   48   56   41   55    3   94   11   87   78   48
   47   60   16   67   61   36   36   62   13   74
   67  100    3   85   70   19   58   87   61   51
   32   47   40   47   66   85   99   50   19   45
   27   97   84   30   68   28   26   98   88   96
   81   12    1   88   63   32   38   82   68   61
   58   56   53   88  100    8   57   92   39   45
   38   30   81   51   70   28   10   93   53   45
   14   13    1   84   97   69   20   68   19   83
   70   98   83   22   27   44   93   46   91   45
   75   30   45   64   13   47    6   49   57   21
   69   41   37   12    3   81   92   25   24   36
   47   92   28    4   28    3   32   85    8   94
   52    7   97   56   90   60   37   42   19   15
   58   11   18  100   47   24   41   48   51   65
   61   69   45   17    4   31   83   32   68    5
   63   22    5   77   99   19   99   37   92   19
   63   25   83   78   89   66    8   57   89   56
   42   86    8   83   39   26   99   75   60   67
   51  100   42   53   10   66   19    2   24   41
  100   90   68   91   46    5   59   11   10   44
   42   41   76   76   61   52   44   78   40   57
   83   24   14  100   26   41   19   18   21   12
    5   84   57    6   60   91   18   83   44   87
   69   35   72   62   90    8   44   67    4   77];

figure(18)
title('Rec19'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start18_1=clock;
    [FF variable]=fss4(P);
    time_end18_1=clock;
    time18_1=etime(time_end18_1,time_start18_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time18_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec19',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(18);
     title('Rec19'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==18 & runcount2==2


P =[
    
   40   16   50   59  100   78   38   76    9   68
   39    3   35   70   65   80   40   49   52   50
   31   56   88   71   83   59   48   98   88   96
   65   77   58   66   86   93   69   49   85   51
   11    5   75   12   56   64   20    6   83   49
   48   56   41   55    3   94   11   87   78   48
   47   60   16   67   61   36   36   62   13   74
   67  100    3   85   70   19   58   87   61   51
   32   47   40   47   66   85   99   50   19   45
   27   97   84   30   68   28   26   98   88   96
   81   12    1   88   63   32   38   82   68   61
   58   56   53   88  100    8   57   92   39   45
   38   30   81   51   70   28   10   93   53   45
   14   13    1   84   97   69   20   68   19   83
   70   98   83   22   27   44   93   46   91   45
   75   30   45   64   13   47    6   49   57   21
   69   41   37   12    3   81   92   25   24   36
   47   92   28    4   28    3   32   85    8   94
   52    7   97   56   90   60   37   42   19   15
   58   11   18  100   47   24   41   48   51   65
   61   69   45   17    4   31   83   32   68    5
   63   22    5   77   99   19   99   37   92   19
   63   25   83   78   89   66    8   57   89   56
   42   86    8   83   39   26   99   75   60   67
   51  100   42   53   10   66   19    2   24   41
  100   90   68   91   46    5   59   11   10   44
   42   41   76   76   61   52   44   78   40   57
   83   24   14  100   26   41   19   18   21   12
    5   84   57    6   60   91   18   83   44   87
   69   35   72   62   90    8   44   67    4   77];

for i=1:20
    time_start18_2=clock;
    [Nchrom result]=TS(P);
    time_end18_2=clock;
    time18_2=etime(time_end18_2,time_start18_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time18_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec19',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(18);
     title('Rec19'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==18 & runcount2==3


P =[
    
   40   16   50   59  100   78   38   76    9   68
   39    3   35   70   65   80   40   49   52   50
   31   56   88   71   83   59   48   98   88   96
   65   77   58   66   86   93   69   49   85   51
   11    5   75   12   56   64   20    6   83   49
   48   56   41   55    3   94   11   87   78   48
   47   60   16   67   61   36   36   62   13   74
   67  100    3   85   70   19   58   87   61   51
   32   47   40   47   66   85   99   50   19   45
   27   97   84   30   68   28   26   98   88   96
   81   12    1   88   63   32   38   82   68   61
   58   56   53   88  100    8   57   92   39   45
   38   30   81   51   70   28   10   93   53   45
   14   13    1   84   97   69   20   68   19   83
   70   98   83   22   27   44   93   46   91   45
   75   30   45   64   13   47    6   49   57   21
   69   41   37   12    3   81   92   25   24   36
   47   92   28    4   28    3   32   85    8   94
   52    7   97   56   90   60   37   42   19   15
   58   11   18  100   47   24   41   48   51   65
   61   69   45   17    4   31   83   32   68    5
   63   22    5   77   99   19   99   37   92   19
   63   25   83   78   89   66    8   57   89   56
   42   86    8   83   39   26   99   75   60   67
   51  100   42   53   10   66   19    2   24   41
  100   90   68   91   46    5   59   11   10   44
   42   41   76   76   61   52   44   78   40   57
   83   24   14  100   26   41   19   18   21   12
    5   84   57    6   60   91   18   83   44   87
   69   35   72   62   90    8   44   67    4   77];

for i=1:20
    time_start18_3=clock;
    [FF variable]=GATS2(P);
    time_end18_3=clock;
    time18_3=etime(time_end18_3,time_start18_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time18_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec19',{'pailie','fitness','suanfa','time'},expdata);
    figure(18);
     title('Rec19'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 
 


%reC21

elseif runcount1==19 & runcount2==1


P =[
12	89	69	94	22	31	22	95	36	38
55	2	94	19	43	74	72	10	99	16
34	78	27	40	21	17	15	62	96	63
100	14	23	42	52	18	29	70	21	47
41	92	88	52	99	41	68	22	57	66
24	62	19	35	24	49	100	65	13	41
29	34	38	72	29	83	44	91	65	100
89	62	32	54	93	59	8	24	86	66
23	34	89	66	10	48	27	11	94	45
81	57	35	78	23	66	1	3	77	14
72	47	75	27	66	64	30	49	42	7
10	15	26	12	98	12	53	81	46	3
47	54	58	73	44	87	87	98	34	15
13	27	29	85	29	64	62	62	79	74
49	57	24	44	18	97	59	75	17	22
50	11	93	53	52	13	51	76	87	95
99	87	85	9	87	98	34	22	66	11
7	8	90	95	29	79	70	79	6	58
48	100	74	60	74	19	21	6	77	84
96	86	19	15	45	1	90	49	98	80
68	73	55	13	28	16	57	20	76	71
53	38	4	43	11	49	12	91	47	3
57	13	12	12	21	68	2	80	9	28
37	79	92	35	63	13	58	36	65	94
39	49	57	23	53	80	42	29	52	33
36	54	59	69	62	12	77	37	87	47
63	35	26	38	47	82	89	34	1	93
60	28	1	51	94	86	42	75	76	77
2	51	79	74	51	28	78	87	81	35
45	94	42	9	70	4	52	54	16	27];

figure(19)
title('Rec21'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start19_1=clock;
    [FF variable]=fss4(P);
    time_end19_1=clock;
    time19_1=etime(time_end19_1,time_start19_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time19_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec21',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(19);
     title('Rec21'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==19 & runcount2==2


P =[
12	89	69	94	22	31	22	95	36	38
55	2	94	19	43	74	72	10	99	16
34	78	27	40	21	17	15	62	96	63
100	14	23	42	52	18	29	70	21	47
41	92	88	52	99	41	68	22	57	66
24	62	19	35	24	49	100	65	13	41
29	34	38	72	29	83	44	91	65	100
89	62	32	54	93	59	8	24	86	66
23	34	89	66	10	48	27	11	94	45
81	57	35	78	23	66	1	3	77	14
72	47	75	27	66	64	30	49	42	7
10	15	26	12	98	12	53	81	46	3
47	54	58	73	44	87	87	98	34	15
13	27	29	85	29	64	62	62	79	74
49	57	24	44	18	97	59	75	17	22
50	11	93	53	52	13	51	76	87	95
99	87	85	9	87	98	34	22	66	11
7	8	90	95	29	79	70	79	6	58
48	100	74	60	74	19	21	6	77	84
96	86	19	15	45	1	90	49	98	80
68	73	55	13	28	16	57	20	76	71
53	38	4	43	11	49	12	91	47	3
57	13	12	12	21	68	2	80	9	28
37	79	92	35	63	13	58	36	65	94
39	49	57	23	53	80	42	29	52	33
36	54	59	69	62	12	77	37	87	47
63	35	26	38	47	82	89	34	1	93
60	28	1	51	94	86	42	75	76	77
2	51	79	74	51	28	78	87	81	35
45	94	42	9	70	4	52	54	16	27];

for i=1:20
    time_start19_2=clock;
    [Nchrom result]=TS(P);
    time_end19_2=clock;
    time19_2=etime(time_end19_2,time_start19_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time19_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec21',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(19);
     title('Rec21'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==19 & runcount2==3


P =[
12	89	69	94	22	31	22	95	36	38
55	2	94	19	43	74	72	10	99	16
34	78	27	40	21	17	15	62	96	63
100	14	23	42	52	18	29	70	21	47
41	92	88	52	99	41	68	22	57	66
24	62	19	35	24	49	100	65	13	41
29	34	38	72	29	83	44	91	65	100
89	62	32	54	93	59	8	24	86	66
23	34	89	66	10	48	27	11	94	45
81	57	35	78	23	66	1	3	77	14
72	47	75	27	66	64	30	49	42	7
10	15	26	12	98	12	53	81	46	3
47	54	58	73	44	87	87	98	34	15
13	27	29	85	29	64	62	62	79	74
49	57	24	44	18	97	59	75	17	22
50	11	93	53	52	13	51	76	87	95
99	87	85	9	87	98	34	22	66	11
7	8	90	95	29	79	70	79	6	58
48	100	74	60	74	19	21	6	77	84
96	86	19	15	45	1	90	49	98	80
68	73	55	13	28	16	57	20	76	71
53	38	4	43	11	49	12	91	47	3
57	13	12	12	21	68	2	80	9	28
37	79	92	35	63	13	58	36	65	94
39	49	57	23	53	80	42	29	52	33
36	54	59	69	62	12	77	37	87	47
63	35	26	38	47	82	89	34	1	93
60	28	1	51	94	86	42	75	76	77
2	51	79	74	51	28	78	87	81	35
45	94	42	9	70	4	52	54	16	27];

for i=1:20
    time_start19_3=clock;
    [FF variable]=GATS2(P);
    time_end19_3=clock;
    time19_3=etime(time_end19_3,time_start19_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time19_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec21',{'pailie','fitness','suanfa','time'},expdata);
    figure(19);
     title('Rec21'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 
 


%reC23

elseif runcount1==20 & runcount2==1


P =[
54	2	2	75	39	97	70	5	40	16
51	69	31	100	25	58	30	3	18	64
44	18	6	6	9	96	52	31	52	14
66	95	42	1	21	65	24	78	20	81
18	53	28	61	84	52	33	31	14	35
100	39	72	19	44	66	8	59	80	94
51	86	28	56	13	22	51	99	51	8
88	95	45	83	5	30	81	49	86	46
41	24	93	33	70	84	66	50	11	87
92	78	9	47	39	48	65	79	49	4
12	95	32	60	53	44	63	28	66	53
98	31	39	91	7	38	10	2	4	60
11	53	83	29	85	31	55	100	16	10
16	22	32	21	96	42	88	100	12	31
13	80	5	57	15	99	76	56	85	87
83	41	11	64	16	26	98	77	59	60
17	78	85	87	16	29	88	16	20	41
59	8	26	77	4	84	64	62	56	14
44	79	34	85	86	25	76	21	94	49
31	63	50	39	20	32	34	9	39	85
44	37	88	43	50	17	52	38	8	17
9	74	81	55	50	13	82	100	69	89
90	31	8	79	55	59	52	59	83	75
29	33	42	54	5	93	5	38	32	70
81	66	79	36	75	32	36	2	68	77
53	58	82	91	21	65	28	53	39	95
40	72	13	79	9	39	90	9	37	3
66	90	75	45	59	46	98	99	26	55
16	3	46	2	79	11	26	47	88	58
78	97	19	22	5	79	90	57	54	68];

figure(20)
title('Rec23'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start20_1=clock;
    [FF variable]=fss4(P);
    time_end20_1=clock;
    time20_1=etime(time_end20_1,time_start20_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time20_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec23',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(20);
     title('Rec23'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==20 & runcount2==2


P =[
54	2	2	75	39	97	70	5	40	16
51	69	31	100	25	58	30	3	18	64
44	18	6	6	9	96	52	31	52	14
66	95	42	1	21	65	24	78	20	81
18	53	28	61	84	52	33	31	14	35
100	39	72	19	44	66	8	59	80	94
51	86	28	56	13	22	51	99	51	8
88	95	45	83	5	30	81	49	86	46
41	24	93	33	70	84	66	50	11	87
92	78	9	47	39	48	65	79	49	4
12	95	32	60	53	44	63	28	66	53
98	31	39	91	7	38	10	2	4	60
11	53	83	29	85	31	55	100	16	10
16	22	32	21	96	42	88	100	12	31
13	80	5	57	15	99	76	56	85	87
83	41	11	64	16	26	98	77	59	60
17	78	85	87	16	29	88	16	20	41
59	8	26	77	4	84	64	62	56	14
44	79	34	85	86	25	76	21	94	49
31	63	50	39	20	32	34	9	39	85
44	37	88	43	50	17	52	38	8	17
9	74	81	55	50	13	82	100	69	89
90	31	8	79	55	59	52	59	83	75
29	33	42	54	5	93	5	38	32	70
81	66	79	36	75	32	36	2	68	77
53	58	82	91	21	65	28	53	39	95
40	72	13	79	9	39	90	9	37	3
66	90	75	45	59	46	98	99	26	55
16	3	46	2	79	11	26	47	88	58
78	97	19	22	5	79	90	57	54	68];

for i=1:20
    time_start20_2=clock;
    [Nchrom result]=TS(P);
    time_end20_2=clock;
    time20_2=etime(time_end20_2,time_start20_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time20_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec23',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(20);
     title('Rec23'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==20 & runcount2==3


P =[
54	2	2	75	39	97	70	5	40	16
51	69	31	100	25	58	30	3	18	64
44	18	6	6	9	96	52	31	52	14
66	95	42	1	21	65	24	78	20	81
18	53	28	61	84	52	33	31	14	35
100	39	72	19	44	66	8	59	80	94
51	86	28	56	13	22	51	99	51	8
88	95	45	83	5	30	81	49	86	46
41	24	93	33	70	84	66	50	11	87
92	78	9	47	39	48	65	79	49	4
12	95	32	60	53	44	63	28	66	53
98	31	39	91	7	38	10	2	4	60
11	53	83	29	85	31	55	100	16	10
16	22	32	21	96	42	88	100	12	31
13	80	5	57	15	99	76	56	85	87
83	41	11	64	16	26	98	77	59	60
17	78	85	87	16	29	88	16	20	41
59	8	26	77	4	84	64	62	56	14
44	79	34	85	86	25	76	21	94	49
31	63	50	39	20	32	34	9	39	85
44	37	88	43	50	17	52	38	8	17
9	74	81	55	50	13	82	100	69	89
90	31	8	79	55	59	52	59	83	75
29	33	42	54	5	93	5	38	32	70
81	66	79	36	75	32	36	2	68	77
53	58	82	91	21	65	28	53	39	95
40	72	13	79	9	39	90	9	37	3
66	90	75	45	59	46	98	99	26	55
16	3	46	2	79	11	26	47	88	58
78	97	19	22	5	79	90	57	54	68];

for i=1:20
    time_start20_3=clock;
    [FF variable]=GATS2(P);
    time_end20_3=clock;
    time20_3=etime(time_end20_3,time_start20_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time20_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec23',{'pailie','fitness','suanfa','time'},expdata);
    figure(20);
     title('Rec23'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 



%reC25

elseif runcount1==21 & runcount2==1


P =[
    
68	91	17	68	46	86	24	43	58	86	40	27	38	82	86
34	21	4	48	67	24	63	68	96	45	91	97	96	3	46
57	69	12	2	51	68	34	8	17	55	80	61	51	32	36
22	24	24	3	76	65	94	69	73	33	86	36	48	42	85
28	6	47	71	81	93	94	21	32	23	73	48	35	67	59
79	80	27	21	56	36	24	94	53	50	55	7	78	14	53
98	55	71	80	23	45	44	22	40	93	38	4	96	42	53
69	84	63	15	27	66	73	98	64	38	3	69	46	27	34
65	21	79	50	67	68	56	53	71	29	63	36	62	77	35
9	92	84	88	48	71	71	90	24	54	77	96	66	49	29
92	22	73	4	38	31	55	49	66	83	75	82	87	82	89
27	67	89	10	35	67	88	43	51	22	23	60	54	22	76
10	65	77	85	5	25	14	78	32	23	21	11	65	60	23
56	74	66	61	27	41	100	26	92	79	100	39	11	59	97
93	96	79	50	35	28	100	84	78	81	65	69	17	96	19
2	99	100	13	15	35	3	58	39	56	57	48	82	86	53
2	72	49	44	84	48	90	48	27	45	49	26	36	20	33
86	54	79	52	2	67	69	78	38	92	13	25	40	37	80
51	99	68	2	66	44	98	83	50	53	13	57	39	50	92
38	25	18	97	35	7	45	98	81	18	60	73	86	34	3
4	29	84	11	61	47	17	2	68	85	93	64	98	34	62
23	95	66	57	91	15	90	84	25	88	65	24	80	98	76
81	43	11	95	78	1	87	11	26	80	29	100	28	40	37
54	33	39	23	44	32	16	96	29	87	34	25	80	14	83
56	58	10	92	95	95	73	83	57	83	24	54	48	81	20
81	24	37	21	97	60	25	21	53	34	57	12	34	28	87
55	33	74	43	66	65	32	96	29	7	33	78	30	36	45
2	67	56	82	49	74	97	11	75	76	65	41	76	9	80
6	88	52	32	54	20	10	7	64	14	35	81	92	22	81
88	65	62	51	52	89	23	55	63	79	63	94	79	39	50];

figure(21)
title('Rec25'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start21_1=clock;
    [FF variable]=fss4(P);
    time_end21_1=clock;
    time21_1=etime(time_end21_1,time_start21_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time21_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec25',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(21);
     title('Rec25'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==21 & runcount2==2


P =[
    
68	91	17	68	46	86	24	43	58	86	40	27	38	82	86
34	21	4	48	67	24	63	68	96	45	91	97	96	3	46
57	69	12	2	51	68	34	8	17	55	80	61	51	32	36
22	24	24	3	76	65	94	69	73	33	86	36	48	42	85
28	6	47	71	81	93	94	21	32	23	73	48	35	67	59
79	80	27	21	56	36	24	94	53	50	55	7	78	14	53
98	55	71	80	23	45	44	22	40	93	38	4	96	42	53
69	84	63	15	27	66	73	98	64	38	3	69	46	27	34
65	21	79	50	67	68	56	53	71	29	63	36	62	77	35
9	92	84	88	48	71	71	90	24	54	77	96	66	49	29
92	22	73	4	38	31	55	49	66	83	75	82	87	82	89
27	67	89	10	35	67	88	43	51	22	23	60	54	22	76
10	65	77	85	5	25	14	78	32	23	21	11	65	60	23
56	74	66	61	27	41	100	26	92	79	100	39	11	59	97
93	96	79	50	35	28	100	84	78	81	65	69	17	96	19
2	99	100	13	15	35	3	58	39	56	57	48	82	86	53
2	72	49	44	84	48	90	48	27	45	49	26	36	20	33
86	54	79	52	2	67	69	78	38	92	13	25	40	37	80
51	99	68	2	66	44	98	83	50	53	13	57	39	50	92
38	25	18	97	35	7	45	98	81	18	60	73	86	34	3
4	29	84	11	61	47	17	2	68	85	93	64	98	34	62
23	95	66	57	91	15	90	84	25	88	65	24	80	98	76
81	43	11	95	78	1	87	11	26	80	29	100	28	40	37
54	33	39	23	44	32	16	96	29	87	34	25	80	14	83
56	58	10	92	95	95	73	83	57	83	24	54	48	81	20
81	24	37	21	97	60	25	21	53	34	57	12	34	28	87
55	33	74	43	66	65	32	96	29	7	33	78	30	36	45
2	67	56	82	49	74	97	11	75	76	65	41	76	9	80
6	88	52	32	54	20	10	7	64	14	35	81	92	22	81
88	65	62	51	52	89	23	55	63	79	63	94	79	39	50];

for i=1:20
    time_start21_2=clock;
    [Nchrom result]=TS(P);
    time_end21_2=clock;
    time21_2=etime(time_end21_2,time_start21_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time21_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec25',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(21);
     title('Rec25'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==21 & runcount2==3


P =[
    
68	91	17	68	46	86	24	43	58	86	40	27	38	82	86
34	21	4	48	67	24	63	68	96	45	91	97	96	3	46
57	69	12	2	51	68	34	8	17	55	80	61	51	32	36
22	24	24	3	76	65	94	69	73	33	86	36	48	42	85
28	6	47	71	81	93	94	21	32	23	73	48	35	67	59
79	80	27	21	56	36	24	94	53	50	55	7	78	14	53
98	55	71	80	23	45	44	22	40	93	38	4	96	42	53
69	84	63	15	27	66	73	98	64	38	3	69	46	27	34
65	21	79	50	67	68	56	53	71	29	63	36	62	77	35
9	92	84	88	48	71	71	90	24	54	77	96	66	49	29
92	22	73	4	38	31	55	49	66	83	75	82	87	82	89
27	67	89	10	35	67	88	43	51	22	23	60	54	22	76
10	65	77	85	5	25	14	78	32	23	21	11	65	60	23
56	74	66	61	27	41	100	26	92	79	100	39	11	59	97
93	96	79	50	35	28	100	84	78	81	65	69	17	96	19
2	99	100	13	15	35	3	58	39	56	57	48	82	86	53
2	72	49	44	84	48	90	48	27	45	49	26	36	20	33
86	54	79	52	2	67	69	78	38	92	13	25	40	37	80
51	99	68	2	66	44	98	83	50	53	13	57	39	50	92
38	25	18	97	35	7	45	98	81	18	60	73	86	34	3
4	29	84	11	61	47	17	2	68	85	93	64	98	34	62
23	95	66	57	91	15	90	84	25	88	65	24	80	98	76
81	43	11	95	78	1	87	11	26	80	29	100	28	40	37
54	33	39	23	44	32	16	96	29	87	34	25	80	14	83
56	58	10	92	95	95	73	83	57	83	24	54	48	81	20
81	24	37	21	97	60	25	21	53	34	57	12	34	28	87
55	33	74	43	66	65	32	96	29	7	33	78	30	36	45
2	67	56	82	49	74	97	11	75	76	65	41	76	9	80
6	88	52	32	54	20	10	7	64	14	35	81	92	22	81
88	65	62	51	52	89	23	55	63	79	63	94	79	39	50];

for i=1:20
    time_start21_3=clock;
    [FF variable]=GATS2(P);
    time_end21_3=clock;
    time21_3=etime(time_end21_3,time_start21_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time21_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec25',{'pailie','fitness','suanfa','time'},expdata);
    figure(21);
     title('Rec25'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 
 


%reC27

elseif runcount1==22 & runcount2==1


P =[
94	24	34	45	45	93	28	83	12	73	34	64	57	58	49
73	46	90	94	20	9	2	89	35	38	87	14	15	28	50
55	6	28	38	93	74	81	89	61	38	9	61	90	24	65
53	9	67	19	46	41	68	33	68	46	51	96	74	16	71
89	63	14	77	14	47	3	35	98	96	24	45	68	18	23
41	42	38	67	92	21	100	39	85	42	37	10	41	16	67
80	35	48	72	77	19	75	37	81	48	64	2	1	65	4
63	83	93	11	87	67	38	33	43	40	46	3	86	1	68
84	78	16	19	31	56	56	18	77	65	82	14	96	20	6
10	94	30	17	37	50	14	50	34	80	88	52	100	37	65
36	32	59	18	56	39	65	77	91	21	58	90	65	33	65
66	98	49	11	61	85	65	8	46	56	39	29	63	42	4
79	42	65	49	77	12	38	75	80	76	65	50	8	9	33
90	52	18	17	66	7	83	24	37	48	15	92	72	20	2
64	40	19	49	100	74	12	71	80	9	31	1	55	18	9
34	69	36	47	71	44	71	20	5	96	15	83	93	36	95
25	6	13	9	46	80	37	52	76	95	56	84	17	9	51
40	62	98	3	23	69	1	3	43	68	91	37	92	84	48
6	38	74	83	21	14	84	41	100	88	58	59	36	99	68
17	79	95	70	70	40	53	5	86	57	59	37	40	33	89
55	15	11	12	85	40	11	26	8	97	38	28	3	59	30
84	59	92	29	89	89	56	48	32	41	29	9	58	84	58
44	76	34	98	87	99	19	89	43	8	55	55	87	22	97
92	97	2	59	47	69	47	85	66	69	19	85	32	86	65
71	90	69	8	47	89	53	86	97	93	56	58	65	37	94
20	94	66	75	18	14	32	66	2	1	10	9	8	28	66
48	56	18	96	53	5	29	22	41	83	57	14	61	90	4
48	46	80	26	42	68	81	11	1	41	34	59	33	43	78
91	5	10	66	64	57	13	38	26	52	89	38	93	93	50
57	78	60	30	20	3	68	83	45	42	94	26	32	47	94];

figure(22)
title('Rec27'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start22_1=clock;
    [FF variable]=fss4(P);
    time_end22_1=clock;
    time22_1=etime(time_end22_1,time_start22_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time22_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec27',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(22);
     title('Rec27'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==22 & runcount2==2


P =[
94	24	34	45	45	93	28	83	12	73	34	64	57	58	49
73	46	90	94	20	9	2	89	35	38	87	14	15	28	50
55	6	28	38	93	74	81	89	61	38	9	61	90	24	65
53	9	67	19	46	41	68	33	68	46	51	96	74	16	71
89	63	14	77	14	47	3	35	98	96	24	45	68	18	23
41	42	38	67	92	21	100	39	85	42	37	10	41	16	67
80	35	48	72	77	19	75	37	81	48	64	2	1	65	4
63	83	93	11	87	67	38	33	43	40	46	3	86	1	68
84	78	16	19	31	56	56	18	77	65	82	14	96	20	6
10	94	30	17	37	50	14	50	34	80	88	52	100	37	65
36	32	59	18	56	39	65	77	91	21	58	90	65	33	65
66	98	49	11	61	85	65	8	46	56	39	29	63	42	4
79	42	65	49	77	12	38	75	80	76	65	50	8	9	33
90	52	18	17	66	7	83	24	37	48	15	92	72	20	2
64	40	19	49	100	74	12	71	80	9	31	1	55	18	9
34	69	36	47	71	44	71	20	5	96	15	83	93	36	95
25	6	13	9	46	80	37	52	76	95	56	84	17	9	51
40	62	98	3	23	69	1	3	43	68	91	37	92	84	48
6	38	74	83	21	14	84	41	100	88	58	59	36	99	68
17	79	95	70	70	40	53	5	86	57	59	37	40	33	89
55	15	11	12	85	40	11	26	8	97	38	28	3	59	30
84	59	92	29	89	89	56	48	32	41	29	9	58	84	58
44	76	34	98	87	99	19	89	43	8	55	55	87	22	97
92	97	2	59	47	69	47	85	66	69	19	85	32	86	65
71	90	69	8	47	89	53	86	97	93	56	58	65	37	94
20	94	66	75	18	14	32	66	2	1	10	9	8	28	66
48	56	18	96	53	5	29	22	41	83	57	14	61	90	4
48	46	80	26	42	68	81	11	1	41	34	59	33	43	78
91	5	10	66	64	57	13	38	26	52	89	38	93	93	50
57	78	60	30	20	3	68	83	45	42	94	26	32	47	94];

for i=1:20
    time_start22_2=clock;
    [Nchrom result]=TS(P);
    time_end22_2=clock;
    time22_2=etime(time_end22_2,time_start22_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time22_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec27',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(22);
     title('Rec27'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==22 & runcount2==3


P =[
94	24	34	45	45	93	28	83	12	73	34	64	57	58	49
73	46	90	94	20	9	2	89	35	38	87	14	15	28	50
55	6	28	38	93	74	81	89	61	38	9	61	90	24	65
53	9	67	19	46	41	68	33	68	46	51	96	74	16	71
89	63	14	77	14	47	3	35	98	96	24	45	68	18	23
41	42	38	67	92	21	100	39	85	42	37	10	41	16	67
80	35	48	72	77	19	75	37	81	48	64	2	1	65	4
63	83	93	11	87	67	38	33	43	40	46	3	86	1	68
84	78	16	19	31	56	56	18	77	65	82	14	96	20	6
10	94	30	17	37	50	14	50	34	80	88	52	100	37	65
36	32	59	18	56	39	65	77	91	21	58	90	65	33	65
66	98	49	11	61	85	65	8	46	56	39	29	63	42	4
79	42	65	49	77	12	38	75	80	76	65	50	8	9	33
90	52	18	17	66	7	83	24	37	48	15	92	72	20	2
64	40	19	49	100	74	12	71	80	9	31	1	55	18	9
34	69	36	47	71	44	71	20	5	96	15	83	93	36	95
25	6	13	9	46	80	37	52	76	95	56	84	17	9	51
40	62	98	3	23	69	1	3	43	68	91	37	92	84	48
6	38	74	83	21	14	84	41	100	88	58	59	36	99	68
17	79	95	70	70	40	53	5	86	57	59	37	40	33	89
55	15	11	12	85	40	11	26	8	97	38	28	3	59	30
84	59	92	29	89	89	56	48	32	41	29	9	58	84	58
44	76	34	98	87	99	19	89	43	8	55	55	87	22	97
92	97	2	59	47	69	47	85	66	69	19	85	32	86	65
71	90	69	8	47	89	53	86	97	93	56	58	65	37	94
20	94	66	75	18	14	32	66	2	1	10	9	8	28	66
48	56	18	96	53	5	29	22	41	83	57	14	61	90	4
48	46	80	26	42	68	81	11	1	41	34	59	33	43	78
91	5	10	66	64	57	13	38	26	52	89	38	93	93	50
57	78	60	30	20	3	68	83	45	42	94	26	32	47	94];

for i=1:20
   time_start22_3=clock;
    [FF variable]=GATS2(P);
    time_end22_3=clock;
    time22_3=etime(time_end22_3,time_start22_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time22_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec27',{'pailie','fitness','suanfa','time'},expdata);
    figure(22);
     title('Rec27'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 
 


%reC29

elseif runcount1==23 & runcount2==1


P =[
19	84	11	52	100	59	66	18	72	65	96	71	9	23	61
84	3	50	48	50	5	53	55	57	39	29	17	23	61	99
85	77	46	60	22	21	53	61	43	1	96	16	26	100	4
14	44	9	71	29	10	9	79	82	33	63	64	85	39	67
57	76	4	70	38	58	83	39	36	75	85	40	50	34	35
43	47	21	8	36	90	84	82	99	60	51	84	100	27	59
24	47	29	62	41	28	35	60	4	23	29	82	63	53	31
9	55	99	52	83	65	31	67	85	75	51	36	12	19	44
46	84	94	86	72	23	20	63	81	17	60	56	10	15	85
99	35	34	26	44	15	98	99	23	74	93	66	85	56	24
77	41	4	25	26	15	69	17	86	39	34	97	43	43	28
11	52	9	71	36	78	82	95	88	88	3	58	63	66	19
75	31	5	90	80	61	30	14	30	81	83	95	93	7	17
41	27	97	6	82	80	6	59	40	38	73	22	98	44	23
4	1	2	3	33	6	35	18	79	78	62	23	24	15	5
22	51	78	74	96	1	58	51	17	40	37	58	80	64	61
93	54	86	78	59	10	59	31	37	67	92	74	28	28	40
46	31	7	95	99	48	87	17	9	26	20	20	96	20	27
5	47	33	99	83	54	79	7	63	5	67	10	1	27	1
94	5	39	96	60	56	26	19	49	48	50	31	68	11	83
97	15	19	30	19	75	32	85	24	79	1	53	81	57	8
83	28	40	81	25	99	3	91	99	94	7	51	44	10	100
24	15	53	49	21	32	46	95	57	96	65	61	82	62	92
78	9	17	74	90	21	85	69	2	49	40	98	90	51	20
58	28	3	30	40	64	36	23	4	7	17	37	81	96	20
2	65	45	41	1	96	36	39	55	14	17	20	3	21	67
82	92	22	44	92	51	4	35	67	80	32	91	49	17	20
57	60	51	44	30	87	24	42	29	34	79	68	15	78	98
17	7	9	54	31	17	2	66	47	73	1	16	32	86	85
79	93	83	8	81	61	69	99	34	68	51	46	91	52	50];

figure(23)
title('Rec29'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start23_1=clock;
    [FF variable]=fss4(P);
    time_end23_1=clock;
    time23_1=etime(time_end23_1,time_start23_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time23_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec29',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(23);
     title('Rec29'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==23 & runcount2==2


P =[
19	84	11	52	100	59	66	18	72	65	96	71	9	23	61
84	3	50	48	50	5	53	55	57	39	29	17	23	61	99
85	77	46	60	22	21	53	61	43	1	96	16	26	100	4
14	44	9	71	29	10	9	79	82	33	63	64	85	39	67
57	76	4	70	38	58	83	39	36	75	85	40	50	34	35
43	47	21	8	36	90	84	82	99	60	51	84	100	27	59
24	47	29	62	41	28	35	60	4	23	29	82	63	53	31
9	55	99	52	83	65	31	67	85	75	51	36	12	19	44
46	84	94	86	72	23	20	63	81	17	60	56	10	15	85
99	35	34	26	44	15	98	99	23	74	93	66	85	56	24
77	41	4	25	26	15	69	17	86	39	34	97	43	43	28
11	52	9	71	36	78	82	95	88	88	3	58	63	66	19
75	31	5	90	80	61	30	14	30	81	83	95	93	7	17
41	27	97	6	82	80	6	59	40	38	73	22	98	44	23
4	1	2	3	33	6	35	18	79	78	62	23	24	15	5
22	51	78	74	96	1	58	51	17	40	37	58	80	64	61
93	54	86	78	59	10	59	31	37	67	92	74	28	28	40
46	31	7	95	99	48	87	17	9	26	20	20	96	20	27
5	47	33	99	83	54	79	7	63	5	67	10	1	27	1
94	5	39	96	60	56	26	19	49	48	50	31	68	11	83
97	15	19	30	19	75	32	85	24	79	1	53	81	57	8
83	28	40	81	25	99	3	91	99	94	7	51	44	10	100
24	15	53	49	21	32	46	95	57	96	65	61	82	62	92
78	9	17	74	90	21	85	69	2	49	40	98	90	51	20
58	28	3	30	40	64	36	23	4	7	17	37	81	96	20
2	65	45	41	1	96	36	39	55	14	17	20	3	21	67
82	92	22	44	92	51	4	35	67	80	32	91	49	17	20
57	60	51	44	30	87	24	42	29	34	79	68	15	78	98
17	7	9	54	31	17	2	66	47	73	1	16	32	86	85
79	93	83	8	81	61	69	99	34	68	51	46	91	52	50];

for i=1:20
    time_start23_2=clock;
    [Nchrom result]=TS(P);
    time_end23_2=clock;
    time23_2=etime(time_end23_2,time_start23_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time23_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec29',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(23);
     title('Rec29'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==23 & runcount2==3


P =[
19	84	11	52	100	59	66	18	72	65	96	71	9	23	61
84	3	50	48	50	5	53	55	57	39	29	17	23	61	99
85	77	46	60	22	21	53	61	43	1	96	16	26	100	4
14	44	9	71	29	10	9	79	82	33	63	64	85	39	67
57	76	4	70	38	58	83	39	36	75	85	40	50	34	35
43	47	21	8	36	90	84	82	99	60	51	84	100	27	59
24	47	29	62	41	28	35	60	4	23	29	82	63	53	31
9	55	99	52	83	65	31	67	85	75	51	36	12	19	44
46	84	94	86	72	23	20	63	81	17	60	56	10	15	85
99	35	34	26	44	15	98	99	23	74	93	66	85	56	24
77	41	4	25	26	15	69	17	86	39	34	97	43	43	28
11	52	9	71	36	78	82	95	88	88	3	58	63	66	19
75	31	5	90	80	61	30	14	30	81	83	95	93	7	17
41	27	97	6	82	80	6	59	40	38	73	22	98	44	23
4	1	2	3	33	6	35	18	79	78	62	23	24	15	5
22	51	78	74	96	1	58	51	17	40	37	58	80	64	61
93	54	86	78	59	10	59	31	37	67	92	74	28	28	40
46	31	7	95	99	48	87	17	9	26	20	20	96	20	27
5	47	33	99	83	54	79	7	63	5	67	10	1	27	1
94	5	39	96	60	56	26	19	49	48	50	31	68	11	83
97	15	19	30	19	75	32	85	24	79	1	53	81	57	8
83	28	40	81	25	99	3	91	99	94	7	51	44	10	100
24	15	53	49	21	32	46	95	57	96	65	61	82	62	92
78	9	17	74	90	21	85	69	2	49	40	98	90	51	20
58	28	3	30	40	64	36	23	4	7	17	37	81	96	20
2	65	45	41	1	96	36	39	55	14	17	20	3	21	67
82	92	22	44	92	51	4	35	67	80	32	91	49	17	20
57	60	51	44	30	87	24	42	29	34	79	68	15	78	98
17	7	9	54	31	17	2	66	47	73	1	16	32	86	85
79	93	83	8	81	61	69	99	34	68	51	46	91	52	50];

for i=1:20
    time_start23_3=clock;
    [FF variable]=GATS2(P);
    time_end23_3=clock;
    time23_3=etime(time_end23_3,time_start23_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time23_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec29',{'pailie','fitness','suanfa','time'},expdata);
    figure(23);
     title('Rec29'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 



%reC31

elseif runcount1==24 & runcount2==1


P =[
59	47	20	43	49	74	38	46	18	12
30	1	90	97	5	70	59	63	15	93
22	58	68	3	33	48	27	12	65	21
70	81	2	32	72	57	32	25	13	87
38	17	48	53	57	17	25	50	72	72
51	15	72	8	34	90	40	44	47	77
63	84	75	75	71	13	10	97	81	31
48	62	71	70	6	94	10	71	29	99
92	29	91	99	54	64	89	89	38	87
91	21	56	49	43	20	27	68	99	73
62	6	3	89	48	97	79	21	96	77
67	83	70	49	50	50	60	28	15	50
73	18	55	49	66	56	90	29	87	4
27	94	71	33	31	68	45	52	95	40
48	28	46	73	89	35	98	97	67	9
7	51	48	4	29	62	37	15	10	66
55	46	65	48	61	36	69	14	78	100
4	4	31	49	28	78	73	26	29	26
19	97	37	30	37	16	15	89	11	16
30	95	86	22	17	16	61	79	24	9
71	39	93	87	38	7	24	1	91	34
83	40	37	25	68	47	81	62	96	19
45	33	12	63	32	40	60	54	66	92
40	67	83	11	62	69	46	93	80	50
100	6	82	78	5	43	18	73	86	62
97	75	81	22	38	2	53	44	73	74
74	89	14	33	11	43	70	58	47	8
73	46	62	27	63	34	58	91	11	80
14	24	27	62	72	85	98	99	25	7
100	29	8	55	88	96	23	98	19	79
53	11	74	66	94	66	98	87	5	85
68	77	88	47	51	73	16	17	87	96
69	40	46	62	23	31	45	21	15	40
34	41	10	17	25	33	17	28	45	68
7	26	79	76	35	92	77	15	27	69
47	31	83	28	92	83	96	18	84	45
54	96	8	28	94	50	20	28	99	65
9	13	81	1	94	82	29	82	27	45
64	22	51	33	9	25	22	64	78	88
38	25	16	24	62	4	39	77	36	60
72	6	40	56	23	39	38	5	75	44
26	33	37	84	61	86	22	94	93	17
88	39	63	43	98	27	32	20	25	25
73	70	57	5	100	31	34	11	98	76
77	4	85	50	9	45	35	3	41	80
20	36	9	89	4	32	76	20	84	6
99	64	7	68	67	85	60	23	55	52
13	7	80	57	22	78	75	17	70	55
40	87	34	96	27	78	53	40	72	91
77	8	14	76	19	82	86	21	10	51];

figure(24)
title('Rec31'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start24_1=clock;
    [FF variable]=fss4(P);
    time_end24_1=clock;
    time24_1=etime(time_end24_1,time_start24_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time24_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec31',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(24);
     title('Rec31'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==24 & runcount2==2


P =[
59	47	20	43	49	74	38	46	18	12
30	1	90	97	5	70	59	63	15	93
22	58	68	3	33	48	27	12	65	21
70	81	2	32	72	57	32	25	13	87
38	17	48	53	57	17	25	50	72	72
51	15	72	8	34	90	40	44	47	77
63	84	75	75	71	13	10	97	81	31
48	62	71	70	6	94	10	71	29	99
92	29	91	99	54	64	89	89	38	87
91	21	56	49	43	20	27	68	99	73
62	6	3	89	48	97	79	21	96	77
67	83	70	49	50	50	60	28	15	50
73	18	55	49	66	56	90	29	87	4
27	94	71	33	31	68	45	52	95	40
48	28	46	73	89	35	98	97	67	9
7	51	48	4	29	62	37	15	10	66
55	46	65	48	61	36	69	14	78	100
4	4	31	49	28	78	73	26	29	26
19	97	37	30	37	16	15	89	11	16
30	95	86	22	17	16	61	79	24	9
71	39	93	87	38	7	24	1	91	34
83	40	37	25	68	47	81	62	96	19
45	33	12	63	32	40	60	54	66	92
40	67	83	11	62	69	46	93	80	50
100	6	82	78	5	43	18	73	86	62
97	75	81	22	38	2	53	44	73	74
74	89	14	33	11	43	70	58	47	8
73	46	62	27	63	34	58	91	11	80
14	24	27	62	72	85	98	99	25	7
100	29	8	55	88	96	23	98	19	79
53	11	74	66	94	66	98	87	5	85
68	77	88	47	51	73	16	17	87	96
69	40	46	62	23	31	45	21	15	40
34	41	10	17	25	33	17	28	45	68
7	26	79	76	35	92	77	15	27	69
47	31	83	28	92	83	96	18	84	45
54	96	8	28	94	50	20	28	99	65
9	13	81	1	94	82	29	82	27	45
64	22	51	33	9	25	22	64	78	88
38	25	16	24	62	4	39	77	36	60
72	6	40	56	23	39	38	5	75	44
26	33	37	84	61	86	22	94	93	17
88	39	63	43	98	27	32	20	25	25
73	70	57	5	100	31	34	11	98	76
77	4	85	50	9	45	35	3	41	80
20	36	9	89	4	32	76	20	84	6
99	64	7	68	67	85	60	23	55	52
13	7	80	57	22	78	75	17	70	55
40	87	34	96	27	78	53	40	72	91
77	8	14	76	19	82	86	21	10	51];

for i=1:20
    time_start24_2=clock;
    [Nchrom result]=TS(P);
    time_end24_2=clock;
    time24_2=etime(time_end24_2,time_start24_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time24_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec31',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(24);
     title('Rec31'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==24 & runcount2==3


P =[
59	47	20	43	49	74	38	46	18	12
30	1	90	97	5	70	59	63	15	93
22	58	68	3	33	48	27	12	65	21
70	81	2	32	72	57	32	25	13	87
38	17	48	53	57	17	25	50	72	72
51	15	72	8	34	90	40	44	47	77
63	84	75	75	71	13	10	97	81	31
48	62	71	70	6	94	10	71	29	99
92	29	91	99	54	64	89	89	38	87
91	21	56	49	43	20	27	68	99	73
62	6	3	89	48	97	79	21	96	77
67	83	70	49	50	50	60	28	15	50
73	18	55	49	66	56	90	29	87	4
27	94	71	33	31	68	45	52	95	40
48	28	46	73	89	35	98	97	67	9
7	51	48	4	29	62	37	15	10	66
55	46	65	48	61	36	69	14	78	100
4	4	31	49	28	78	73	26	29	26
19	97	37	30	37	16	15	89	11	16
30	95	86	22	17	16	61	79	24	9
71	39	93	87	38	7	24	1	91	34
83	40	37	25	68	47	81	62	96	19
45	33	12	63	32	40	60	54	66	92
40	67	83	11	62	69	46	93	80	50
100	6	82	78	5	43	18	73	86	62
97	75	81	22	38	2	53	44	73	74
74	89	14	33	11	43	70	58	47	8
73	46	62	27	63	34	58	91	11	80
14	24	27	62	72	85	98	99	25	7
100	29	8	55	88	96	23	98	19	79
53	11	74	66	94	66	98	87	5	85
68	77	88	47	51	73	16	17	87	96
69	40	46	62	23	31	45	21	15	40
34	41	10	17	25	33	17	28	45	68
7	26	79	76	35	92	77	15	27	69
47	31	83	28	92	83	96	18	84	45
54	96	8	28	94	50	20	28	99	65
9	13	81	1	94	82	29	82	27	45
64	22	51	33	9	25	22	64	78	88
38	25	16	24	62	4	39	77	36	60
72	6	40	56	23	39	38	5	75	44
26	33	37	84	61	86	22	94	93	17
88	39	63	43	98	27	32	20	25	25
73	70	57	5	100	31	34	11	98	76
77	4	85	50	9	45	35	3	41	80
20	36	9	89	4	32	76	20	84	6
99	64	7	68	67	85	60	23	55	52
13	7	80	57	22	78	75	17	70	55
40	87	34	96	27	78	53	40	72	91
77	8	14	76	19	82	86	21	10	51];

for i=1:20
    time_start24_3=clock;
    [FF variable]=GATS2(P);
    time_end24_3=clock;
    time24_3=etime(time_end24_3,time_start24_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time24_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec31',{'pailie','fitness','suanfa','time'},expdata);
    figure(24);
     title('Rec31'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 



%reC33
elseif runcount1==25 & runcount2==1


P =[
58	62	99	63	18	68	14	45	98	37
38	49	31	36	13	39	64	58	72	31
16	53	33	21	85	99	20	85	96	99
32	59	13	99	61	98	30	14	22	66
10	74	78	58	39	23	10	78	75	42
96	70	92	53	1	52	58	71	15	50
8	72	78	8	7	94	66	32	90	92
25	19	53	65	83	57	95	71	68	65
42	93	72	85	35	68	93	4	94	45
37	62	60	66	39	71	5	27	65	87
92	78	25	97	4	79	19	67	90	53
78	73	64	47	68	47	79	97	37	10
35	34	89	92	97	74	91	21	41	18
47	3	73	85	27	28	45	34	29	85
47	63	36	23	8	3	57	68	43	68
2	100	92	8	67	27	15	34	63	20
93	15	96	40	84	59	29	40	15	10
38	62	29	19	32	13	21	96	70	76
70	1	63	47	20	79	38	3	60	48
14	38	71	55	100	41	93	11	20	3
60	26	23	50	32	93	79	85	48	20
32	13	38	22	37	59	85	80	94	19
25	52	62	40	76	15	36	7	18	28
77	2	38	83	33	60	64	2	33	9
68	65	85	60	97	25	57	71	94	59
92	57	17	25	68	26	86	49	74	35
46	66	7	11	13	66	51	26	41	94
74	85	55	42	98	51	40	69	20	64
83	56	31	98	24	75	59	53	50	45
72	90	55	34	90	21	76	60	82	76
13	8	2	30	94	24	77	71	100	80
80	56	40	18	87	98	100	41	2	86
54	59	82	81	33	71	4	87	21	18
7	20	10	45	96	70	93	77	48	22
100	61	16	67	63	96	67	12	20	64
5	42	57	26	24	35	53	67	94	72
23	74	65	36	88	68	100	69	84	93
22	74	74	80	40	65	53	86	19	70
17	8	16	97	67	95	70	45	17	97
78	1	55	3	68	26	33	5	9	66
12	58	9	83	57	27	78	14	61	55
71	3	68	81	61	3	14	75	49	94
37	62	60	85	31	84	80	75	59	6
54	75	14	19	32	66	3	69	77	90
35	58	3	47	23	98	18	26	64	22
91	14	89	62	52	59	44	62	76	33
40	47	1	6	19	1	86	37	79	95
1	23	77	76	71	99	40	14	27	46
57	69	76	55	56	83	12	26	12	53
75	44	90	73	4	74	51	25	20	95];


figure(25)
title('Rec33'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start25_1=clock;
    [FF variable]=fss4(P);
    time_end25_1=clock;
    time25_1=etime(time_end25_1,time_start25_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time25_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec33',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(25);
     title('Rec33'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==25 & runcount2==2


P =[
58	62	99	63	18	68	14	45	98	37
38	49	31	36	13	39	64	58	72	31
16	53	33	21	85	99	20	85	96	99
32	59	13	99	61	98	30	14	22	66
10	74	78	58	39	23	10	78	75	42
96	70	92	53	1	52	58	71	15	50
8	72	78	8	7	94	66	32	90	92
25	19	53	65	83	57	95	71	68	65
42	93	72	85	35	68	93	4	94	45
37	62	60	66	39	71	5	27	65	87
92	78	25	97	4	79	19	67	90	53
78	73	64	47	68	47	79	97	37	10
35	34	89	92	97	74	91	21	41	18
47	3	73	85	27	28	45	34	29	85
47	63	36	23	8	3	57	68	43	68
2	100	92	8	67	27	15	34	63	20
93	15	96	40	84	59	29	40	15	10
38	62	29	19	32	13	21	96	70	76
70	1	63	47	20	79	38	3	60	48
14	38	71	55	100	41	93	11	20	3
60	26	23	50	32	93	79	85	48	20
32	13	38	22	37	59	85	80	94	19
25	52	62	40	76	15	36	7	18	28
77	2	38	83	33	60	64	2	33	9
68	65	85	60	97	25	57	71	94	59
92	57	17	25	68	26	86	49	74	35
46	66	7	11	13	66	51	26	41	94
74	85	55	42	98	51	40	69	20	64
83	56	31	98	24	75	59	53	50	45
72	90	55	34	90	21	76	60	82	76
13	8	2	30	94	24	77	71	100	80
80	56	40	18	87	98	100	41	2	86
54	59	82	81	33	71	4	87	21	18
7	20	10	45	96	70	93	77	48	22
100	61	16	67	63	96	67	12	20	64
5	42	57	26	24	35	53	67	94	72
23	74	65	36	88	68	100	69	84	93
22	74	74	80	40	65	53	86	19	70
17	8	16	97	67	95	70	45	17	97
78	1	55	3	68	26	33	5	9	66
12	58	9	83	57	27	78	14	61	55
71	3	68	81	61	3	14	75	49	94
37	62	60	85	31	84	80	75	59	6
54	75	14	19	32	66	3	69	77	90
35	58	3	47	23	98	18	26	64	22
91	14	89	62	52	59	44	62	76	33
40	47	1	6	19	1	86	37	79	95
1	23	77	76	71	99	40	14	27	46
57	69	76	55	56	83	12	26	12	53
75	44	90	73	4	74	51	25	20	95];


for i=1:20
    time_start25_2=clock;
    [Nchrom result]=TS(P);
    time_end25_2=clock;
    time25_2=etime(time_end25_2,time_start25_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time25_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec33',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(25);
     title('Rec33'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==25 & runcount2==3


P =[
58	62	99	63	18	68	14	45	98	37
38	49	31	36	13	39	64	58	72	31
16	53	33	21	85	99	20	85	96	99
32	59	13	99	61	98	30	14	22	66
10	74	78	58	39	23	10	78	75	42
96	70	92	53	1	52	58	71	15	50
8	72	78	8	7	94	66	32	90	92
25	19	53	65	83	57	95	71	68	65
42	93	72	85	35	68	93	4	94	45
37	62	60	66	39	71	5	27	65	87
92	78	25	97	4	79	19	67	90	53
78	73	64	47	68	47	79	97	37	10
35	34	89	92	97	74	91	21	41	18
47	3	73	85	27	28	45	34	29	85
47	63	36	23	8	3	57	68	43	68
2	100	92	8	67	27	15	34	63	20
93	15	96	40	84	59	29	40	15	10
38	62	29	19	32	13	21	96	70	76
70	1	63	47	20	79	38	3	60	48
14	38	71	55	100	41	93	11	20	3
60	26	23	50	32	93	79	85	48	20
32	13	38	22	37	59	85	80	94	19
25	52	62	40	76	15	36	7	18	28
77	2	38	83	33	60	64	2	33	9
68	65	85	60	97	25	57	71	94	59
92	57	17	25	68	26	86	49	74	35
46	66	7	11	13	66	51	26	41	94
74	85	55	42	98	51	40	69	20	64
83	56	31	98	24	75	59	53	50	45
72	90	55	34	90	21	76	60	82	76
13	8	2	30	94	24	77	71	100	80
80	56	40	18	87	98	100	41	2	86
54	59	82	81	33	71	4	87	21	18
7	20	10	45	96	70	93	77	48	22
100	61	16	67	63	96	67	12	20	64
5	42	57	26	24	35	53	67	94	72
23	74	65	36	88	68	100	69	84	93
22	74	74	80	40	65	53	86	19	70
17	8	16	97	67	95	70	45	17	97
78	1	55	3	68	26	33	5	9	66
12	58	9	83	57	27	78	14	61	55
71	3	68	81	61	3	14	75	49	94
37	62	60	85	31	84	80	75	59	6
54	75	14	19	32	66	3	69	77	90
35	58	3	47	23	98	18	26	64	22
91	14	89	62	52	59	44	62	76	33
40	47	1	6	19	1	86	37	79	95
1	23	77	76	71	99	40	14	27	46
57	69	76	55	56	83	12	26	12	53
75	44	90	73	4	74	51	25	20	95];


for i=1:20
    time_start25_3=clock;
    [FF variable]=GATS2(P);
    time_end25_3=clock;
    time25_3=etime(time_end25_3,time_start25_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time25_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec33',{'pailie','fitness','suanfa','time'},expdata);
    figure(25);
     title('Rec33'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 


    
%reC35

elseif runcount1==26 & runcount2==1


P =[
100	72	76	100	16	9	5	87	34	15
19	3	19	68	29	22	16	13	87	70
70	56	39	71	29	91	100	86	88	99
50	93	100	71	84	64	67	29	28	81
80	97	3	10	14	32	92	67	72	68
47	59	29	3	26	20	50	26	1	70
40	63	69	21	56	73	56	10	46	40
84	80	68	82	4	45	100	96	29	67
85	46	59	35	68	84	89	18	97	58
60	60	2	50	90	20	78	56	62	27
78	64	21	5	85	55	15	23	36	87
98	31	42	73	83	48	71	49	72	30
4	57	30	11	67	4	82	77	98	21
45	45	25	45	7	59	88	42	57	81
73	94	83	59	1	72	65	62	45	76
77	84	11	82	10	9	67	27	43	8
22	66	5	77	97	28	61	82	62	96
90	51	87	27	65	76	67	20	75	67
12	92	43	21	92	64	94	67	60	46
9	76	62	46	71	65	76	65	30	38
29	12	71	70	46	96	12	70	76	19
83	15	73	32	51	6	3	29	3	24
83	95	87	29	46	67	89	73	69	33
83	46	82	2	55	54	85	3	20	57
11	32	15	27	2	43	23	79	28	29
10	74	73	99	54	89	83	5	28	90
73	40	4	20	51	18	37	18	61	75
85	30	58	89	48	15	82	77	2	3
56	63	26	87	53	8	80	46	5	62
59	67	73	65	60	61	94	86	38	1
70	66	80	32	93	56	26	41	21	9
4	66	79	43	39	83	55	25	62	13
51	42	90	85	84	29	73	8	95	57
18	30	61	67	57	60	25	10	20	95
61	9	3	2	61	18	44	78	38	74
25	91	31	2	14	97	91	84	88	26
84	8	95	61	85	41	88	4	86	51
74	2	24	42	33	24	62	13	62	10
33	7	62	68	42	41	78	67	99	6
38	43	2	4	62	95	76	91	67	78
43	98	28	51	43	84	13	71	64	81
15	19	50	30	75	90	94	35	51	83
75	98	42	67	24	63	15	45	92	44
29	60	80	86	70	13	100	86	88	6
14	49	78	93	45	94	35	46	18	85
29	20	27	66	70	95	7	11	75	52
73	19	33	36	93	21	44	51	4	24
87	79	52	85	24	89	50	4	37	50
86	99	31	25	78	10	41	66	35	1
2	41	41	88	6	77	89	80	21	54];

figure(26)
title('Rec35'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start26_1=clock;
    [FF variable]=fss4(P);
    time_end26_1=clock;
    time26_1=etime(time_end26_1,time_start26_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time26_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec35',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(26);
     title('Rec35'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==26 & runcount2==2


P =[
100	72	76	100	16	9	5	87	34	15
19	3	19	68	29	22	16	13	87	70
70	56	39	71	29	91	100	86	88	99
50	93	100	71	84	64	67	29	28	81
80	97	3	10	14	32	92	67	72	68
47	59	29	3	26	20	50	26	1	70
40	63	69	21	56	73	56	10	46	40
84	80	68	82	4	45	100	96	29	67
85	46	59	35	68	84	89	18	97	58
60	60	2	50	90	20	78	56	62	27
78	64	21	5	85	55	15	23	36	87
98	31	42	73	83	48	71	49	72	30
4	57	30	11	67	4	82	77	98	21
45	45	25	45	7	59	88	42	57	81
73	94	83	59	1	72	65	62	45	76
77	84	11	82	10	9	67	27	43	8
22	66	5	77	97	28	61	82	62	96
90	51	87	27	65	76	67	20	75	67
12	92	43	21	92	64	94	67	60	46
9	76	62	46	71	65	76	65	30	38
29	12	71	70	46	96	12	70	76	19
83	15	73	32	51	6	3	29	3	24
83	95	87	29	46	67	89	73	69	33
83	46	82	2	55	54	85	3	20	57
11	32	15	27	2	43	23	79	28	29
10	74	73	99	54	89	83	5	28	90
73	40	4	20	51	18	37	18	61	75
85	30	58	89	48	15	82	77	2	3
56	63	26	87	53	8	80	46	5	62
59	67	73	65	60	61	94	86	38	1
70	66	80	32	93	56	26	41	21	9
4	66	79	43	39	83	55	25	62	13
51	42	90	85	84	29	73	8	95	57
18	30	61	67	57	60	25	10	20	95
61	9	3	2	61	18	44	78	38	74
25	91	31	2	14	97	91	84	88	26
84	8	95	61	85	41	88	4	86	51
74	2	24	42	33	24	62	13	62	10
33	7	62	68	42	41	78	67	99	6
38	43	2	4	62	95	76	91	67	78
43	98	28	51	43	84	13	71	64	81
15	19	50	30	75	90	94	35	51	83
75	98	42	67	24	63	15	45	92	44
29	60	80	86	70	13	100	86	88	6
14	49	78	93	45	94	35	46	18	85
29	20	27	66	70	95	7	11	75	52
73	19	33	36	93	21	44	51	4	24
87	79	52	85	24	89	50	4	37	50
86	99	31	25	78	10	41	66	35	1
2	41	41	88	6	77	89	80	21	54];

for i=1:20
    time_start26_2=clock;
    [Nchrom result]=TS(P);
    time_end26_2=clock;
    time26_2=etime(time_end26_2,time_start26_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time26_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec35',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(26);
     title('Rec35'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==26 & runcount2==3


P =[
100	72	76	100	16	9	5	87	34	15
19	3	19	68	29	22	16	13	87	70
70	56	39	71	29	91	100	86	88	99
50	93	100	71	84	64	67	29	28	81
80	97	3	10	14	32	92	67	72	68
47	59	29	3	26	20	50	26	1	70
40	63	69	21	56	73	56	10	46	40
84	80	68	82	4	45	100	96	29	67
85	46	59	35	68	84	89	18	97	58
60	60	2	50	90	20	78	56	62	27
78	64	21	5	85	55	15	23	36	87
98	31	42	73	83	48	71	49	72	30
4	57	30	11	67	4	82	77	98	21
45	45	25	45	7	59	88	42	57	81
73	94	83	59	1	72	65	62	45	76
77	84	11	82	10	9	67	27	43	8
22	66	5	77	97	28	61	82	62	96
90	51	87	27	65	76	67	20	75	67
12	92	43	21	92	64	94	67	60	46
9	76	62	46	71	65	76	65	30	38
29	12	71	70	46	96	12	70	76	19
83	15	73	32	51	6	3	29	3	24
83	95	87	29	46	67	89	73	69	33
83	46	82	2	55	54	85	3	20	57
11	32	15	27	2	43	23	79	28	29
10	74	73	99	54	89	83	5	28	90
73	40	4	20	51	18	37	18	61	75
85	30	58	89	48	15	82	77	2	3
56	63	26	87	53	8	80	46	5	62
59	67	73	65	60	61	94	86	38	1
70	66	80	32	93	56	26	41	21	9
4	66	79	43	39	83	55	25	62	13
51	42	90	85	84	29	73	8	95	57
18	30	61	67	57	60	25	10	20	95
61	9	3	2	61	18	44	78	38	74
25	91	31	2	14	97	91	84	88	26
84	8	95	61	85	41	88	4	86	51
74	2	24	42	33	24	62	13	62	10
33	7	62	68	42	41	78	67	99	6
38	43	2	4	62	95	76	91	67	78
43	98	28	51	43	84	13	71	64	81
15	19	50	30	75	90	94	35	51	83
75	98	42	67	24	63	15	45	92	44
29	60	80	86	70	13	100	86	88	6
14	49	78	93	45	94	35	46	18	85
29	20	27	66	70	95	7	11	75	52
73	19	33	36	93	21	44	51	4	24
87	79	52	85	24	89	50	4	37	50
86	99	31	25	78	10	41	66	35	1
2	41	41	88	6	77	89	80	21	54];

for i=1:20
    time_start26_3=clock;
    [FF variable]=GATS2(P);
    time_end26_3=clock;
    time26_3=etime(time_end26_3,time_start26_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time26_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec35',{'pailie','fitness','suanfa','time'},expdata);
    figure(26);
     title('Rec35'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 




%reC37

elseif runcount1==27 & runcount2==1


P =[
    
3	64	92	79	4	67	69	89	50	9	2	7	42	87	4	93	7	21	14	29
71	63	89	2	95	21	27	56	31	17	24	5	56	22	71	83	71	31	80	47
4	39	31	64	41	85	30	58	81	92	19	59	78	7	62	74	7	99	47	35
33	3	86	65	46	44	23	69	81	95	5	16	63	77	70	88	46	35	82	93
13	90	44	27	42	10	72	88	34	13	23	51	91	95	12	76	41	77	78	45
23	62	25	100	81	17	68	36	70	55	41	62	67	46	30	10	72	84	52	37
68	4	69	56	45	29	30	64	44	59	50	72	19	40	92	88	45	43	46	45
77	27	44	95	37	29	100	45	36	85	69	30	3	15	90	35	88	64	27	66
6	68	42	39	87	29	44	76	51	18	39	9	99	30	40	98	57	84	87	24
34	87	81	37	51	66	56	81	17	70	27	8	10	71	86	51	31	64	44	67
65	70	2	63	7	99	51	9	90	77	26	50	68	50	93	92	15	88	40	68
29	28	73	14	60	15	72	34	50	100	53	83	26	3	55	45	38	70	42	27
82	97	86	15	41	25	87	53	1	25	50	81	64	90	89	58	56	43	42	67
2	38	58	14	3	65	88	90	72	62	84	43	87	98	36	5	48	70	57	35
94	37	31	83	26	96	92	94	19	47	48	91	24	37	64	85	18	36	30	6
89	5	72	23	16	3	40	37	21	42	58	75	31	43	66	19	96	52	27	78
40	78	75	55	2	98	1	19	83	33	57	67	87	78	58	58	38	54	41	74
28	16	55	29	38	16	66	63	35	30	12	67	96	27	82	74	22	3	90	43
57	6	55	18	4	19	53	17	31	69	15	97	88	100	6	66	54	84	14	58
56	59	42	20	5	92	3	54	51	11	83	6	19	35	22	58	62	10	83	17
82	10	9	59	71	47	84	74	99	42	59	68	67	92	47	97	3	16	86	45
12	21	72	83	56	19	89	100	6	74	10	80	38	57	23	57	54	62	43	89
52	77	74	66	40	69	34	79	25	42	27	67	61	40	18	37	22	35	95	24
32	90	82	7	27	83	61	86	38	6	29	76	90	78	23	60	36	45	8	46
6	94	88	27	48	73	38	19	47	54	56	82	6	33	56	75	50	29	77	81
53	52	10	77	56	73	57	1	84	95	78	82	13	88	59	54	45	48	16	75
71	46	90	47	12	7	51	38	19	47	46	100	41	57	100	97	24	87	70	3
50	5	30	86	22	100	10	43	57	80	11	13	26	35	66	98	23	77	31	26
30	33	34	5	65	65	30	42	86	12	57	59	40	37	23	33	96	30	62	67
24	98	2	10	29	43	83	14	69	58	32	92	65	81	30	95	62	76	87	99
66	93	57	28	24	3	69	66	92	62	9	94	63	84	35	38	58	8	30	52
17	34	47	16	87	36	10	26	64	91	87	67	18	88	11	43	45	43	40	80
64	64	45	53	78	59	55	48	22	36	89	43	42	61	57	14	9	22	90	63
17	51	51	44	82	14	77	14	27	16	64	76	71	95	95	81	60	14	78	6
12	85	87	18	12	69	75	27	65	72	86	45	66	6	75	98	35	11	28	39
11	84	3	30	4	17	73	17	47	71	51	55	12	37	71	46	94	29	88	16
98	91	70	59	17	73	18	38	9	6	85	36	21	56	79	28	23	10	32	17
86	73	89	11	37	80	85	71	12	94	36	42	29	54	24	75	34	23	58	47
10	22	82	15	77	6	71	20	41	77	76	54	96	48	55	41	62	59	90	35
31	55	98	26	72	43	1	15	7	22	5	75	8	81	44	6	69	35	76	36
35	14	10	23	82	7	21	11	48	22	46	36	77	21	91	75	39	94	89	29
32	66	16	11	94	42	7	86	22	93	47	91	38	58	18	77	85	2	28	20
60	4	41	20	19	13	56	47	18	77	81	20	52	11	73	67	42	52	16	38
78	45	32	4	92	14	92	22	44	43	48	28	5	21	32	25	70	62	2	38
73	31	63	44	74	62	63	66	38	82	70	44	9	56	91	55	57	72	59	99
55	30	32	44	52	98	43	59	60	11	96	23	98	8	75	87	12	51	86	26
61	32	64	33	37	91	30	6	96	73	100	45	35	94	31	75	72	91	6	49
51	56	5	66	63	31	48	36	57	35	80	14	4	56	34	1	98	9	67	23
12	44	30	23	93	37	44	4	80	88	59	60	17	61	81	67	76	46	44	27
54	63	38	9	12	50	93	90	24	51	85	38	10	3	96	4	16	71	33	65
13	5	50	53	31	38	93	98	76	64	33	27	44	97	28	67	55	75	60	68
51	88	17	10	86	93	67	58	47	96	1	32	4	86	49	34	53	76	72	91
53	53	12	60	38	32	64	25	73	39	11	84	2	37	59	12	97	15	42	12
30	67	32	7	73	98	58	79	15	10	13	35	74	43	81	29	97	61	70	37
18	24	1	82	2	57	45	23	58	51	80	67	80	20	63	41	89	5	78	95
78	39	69	38	61	1	51	88	14	29	10	84	6	11	79	26	34	63	15	42
95	56	7	55	10	48	24	29	18	36	28	15	64	83	27	90	19	80	55	55
82	42	15	39	36	40	36	25	32	90	80	16	89	29	31	62	54	21	95	42
74	88	16	18	50	45	87	81	41	32	41	65	42	64	38	98	74	79	60	30
31	11	59	48	87	54	99	26	57	31	9	68	10	32	23	76	42	71	98	75
40	55	17	8	9	84	22	16	14	78	8	54	2	100	84	1	43	40	82	56
11	86	88	2	1	78	28	29	75	90	86	79	56	60	44	3	87	52	10	79
81	97	95	62	74	4	17	71	26	9	16	21	31	28	52	37	11	99	7	72
10	4	89	40	65	52	11	72	76	4	98	85	15	48	81	83	76	100	19	91
85	49	40	18	34	41	59	85	62	65	53	2	17	87	30	45	68	95	22	15
16	1	49	99	67	12	35	91	46	10	31	25	74	36	22	52	97	53	14	49
40	51	39	14	75	33	36	94	12	82	6	34	47	13	5	60	100	64	17	23
17	16	57	16	94	95	87	25	72	47	75	35	21	60	53	48	37	48	80	90
33	39	78	86	85	17	35	37	62	97	62	57	8	44	65	21	95	45	77	32
98	86	100	29	34	40	55	11	43	51	15	54	44	57	63	9	84	24	6	52
50	51	46	73	52	32	45	51	100	49	9	6	89	17	97	65	40	75	91	81
49	49	65	75	75	84	27	86	45	60	41	18	30	66	39	71	25	17	80	72
81	24	30	12	63	14	51	72	13	75	35	19	76	71	89	30	23	91	46	6
57	42	39	91	3	64	90	88	66	12	39	65	66	24	69	73	47	65	88	88
13	96	17	41	6	1	42	40	89	12	26	35	58	43	28	53	32	31	30  47];

figure(27)
title('Rec37'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start27_1=clock;
    [FF variable]=fss4(P);
    time_end27_1=clock;
    time27_1=etime(time_end27_1,time_start27_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time27_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec37',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(27);
     title('Rec37'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==27 & runcount2==2


P =[
    
3	64	92	79	4	67	69	89	50	9	2	7	42	87	4	93	7	21	14	29
71	63	89	2	95	21	27	56	31	17	24	5	56	22	71	83	71	31	80	47
4	39	31	64	41	85	30	58	81	92	19	59	78	7	62	74	7	99	47	35
33	3	86	65	46	44	23	69	81	95	5	16	63	77	70	88	46	35	82	93
13	90	44	27	42	10	72	88	34	13	23	51	91	95	12	76	41	77	78	45
23	62	25	100	81	17	68	36	70	55	41	62	67	46	30	10	72	84	52	37
68	4	69	56	45	29	30	64	44	59	50	72	19	40	92	88	45	43	46	45
77	27	44	95	37	29	100	45	36	85	69	30	3	15	90	35	88	64	27	66
6	68	42	39	87	29	44	76	51	18	39	9	99	30	40	98	57	84	87	24
34	87	81	37	51	66	56	81	17	70	27	8	10	71	86	51	31	64	44	67
65	70	2	63	7	99	51	9	90	77	26	50	68	50	93	92	15	88	40	68
29	28	73	14	60	15	72	34	50	100	53	83	26	3	55	45	38	70	42	27
82	97	86	15	41	25	87	53	1	25	50	81	64	90	89	58	56	43	42	67
2	38	58	14	3	65	88	90	72	62	84	43	87	98	36	5	48	70	57	35
94	37	31	83	26	96	92	94	19	47	48	91	24	37	64	85	18	36	30	6
89	5	72	23	16	3	40	37	21	42	58	75	31	43	66	19	96	52	27	78
40	78	75	55	2	98	1	19	83	33	57	67	87	78	58	58	38	54	41	74
28	16	55	29	38	16	66	63	35	30	12	67	96	27	82	74	22	3	90	43
57	6	55	18	4	19	53	17	31	69	15	97	88	100	6	66	54	84	14	58
56	59	42	20	5	92	3	54	51	11	83	6	19	35	22	58	62	10	83	17
82	10	9	59	71	47	84	74	99	42	59	68	67	92	47	97	3	16	86	45
12	21	72	83	56	19	89	100	6	74	10	80	38	57	23	57	54	62	43	89
52	77	74	66	40	69	34	79	25	42	27	67	61	40	18	37	22	35	95	24
32	90	82	7	27	83	61	86	38	6	29	76	90	78	23	60	36	45	8	46
6	94	88	27	48	73	38	19	47	54	56	82	6	33	56	75	50	29	77	81
53	52	10	77	56	73	57	1	84	95	78	82	13	88	59	54	45	48	16	75
71	46	90	47	12	7	51	38	19	47	46	100	41	57	100	97	24	87	70	3
50	5	30	86	22	100	10	43	57	80	11	13	26	35	66	98	23	77	31	26
30	33	34	5	65	65	30	42	86	12	57	59	40	37	23	33	96	30	62	67
24	98	2	10	29	43	83	14	69	58	32	92	65	81	30	95	62	76	87	99
66	93	57	28	24	3	69	66	92	62	9	94	63	84	35	38	58	8	30	52
17	34	47	16	87	36	10	26	64	91	87	67	18	88	11	43	45	43	40	80
64	64	45	53	78	59	55	48	22	36	89	43	42	61	57	14	9	22	90	63
17	51	51	44	82	14	77	14	27	16	64	76	71	95	95	81	60	14	78	6
12	85	87	18	12	69	75	27	65	72	86	45	66	6	75	98	35	11	28	39
11	84	3	30	4	17	73	17	47	71	51	55	12	37	71	46	94	29	88	16
98	91	70	59	17	73	18	38	9	6	85	36	21	56	79	28	23	10	32	17
86	73	89	11	37	80	85	71	12	94	36	42	29	54	24	75	34	23	58	47
10	22	82	15	77	6	71	20	41	77	76	54	96	48	55	41	62	59	90	35
31	55	98	26	72	43	1	15	7	22	5	75	8	81	44	6	69	35	76	36
35	14	10	23	82	7	21	11	48	22	46	36	77	21	91	75	39	94	89	29
32	66	16	11	94	42	7	86	22	93	47	91	38	58	18	77	85	2	28	20
60	4	41	20	19	13	56	47	18	77	81	20	52	11	73	67	42	52	16	38
78	45	32	4	92	14	92	22	44	43	48	28	5	21	32	25	70	62	2	38
73	31	63	44	74	62	63	66	38	82	70	44	9	56	91	55	57	72	59	99
55	30	32	44	52	98	43	59	60	11	96	23	98	8	75	87	12	51	86	26
61	32	64	33	37	91	30	6	96	73	100	45	35	94	31	75	72	91	6	49
51	56	5	66	63	31	48	36	57	35	80	14	4	56	34	1	98	9	67	23
12	44	30	23	93	37	44	4	80	88	59	60	17	61	81	67	76	46	44	27
54	63	38	9	12	50	93	90	24	51	85	38	10	3	96	4	16	71	33	65
13	5	50	53	31	38	93	98	76	64	33	27	44	97	28	67	55	75	60	68
51	88	17	10	86	93	67	58	47	96	1	32	4	86	49	34	53	76	72	91
53	53	12	60	38	32	64	25	73	39	11	84	2	37	59	12	97	15	42	12
30	67	32	7	73	98	58	79	15	10	13	35	74	43	81	29	97	61	70	37
18	24	1	82	2	57	45	23	58	51	80	67	80	20	63	41	89	5	78	95
78	39	69	38	61	1	51	88	14	29	10	84	6	11	79	26	34	63	15	42
95	56	7	55	10	48	24	29	18	36	28	15	64	83	27	90	19	80	55	55
82	42	15	39	36	40	36	25	32	90	80	16	89	29	31	62	54	21	95	42
74	88	16	18	50	45	87	81	41	32	41	65	42	64	38	98	74	79	60	30
31	11	59	48	87	54	99	26	57	31	9	68	10	32	23	76	42	71	98	75
40	55	17	8	9	84	22	16	14	78	8	54	2	100	84	1	43	40	82	56
11	86	88	2	1	78	28	29	75	90	86	79	56	60	44	3	87	52	10	79
81	97	95	62	74	4	17	71	26	9	16	21	31	28	52	37	11	99	7	72
10	4	89	40	65	52	11	72	76	4	98	85	15	48	81	83	76	100	19	91
85	49	40	18	34	41	59	85	62	65	53	2	17	87	30	45	68	95	22	15
16	1	49	99	67	12	35	91	46	10	31	25	74	36	22	52	97	53	14	49
40	51	39	14	75	33	36	94	12	82	6	34	47	13	5	60	100	64	17	23
17	16	57	16	94	95	87	25	72	47	75	35	21	60	53	48	37	48	80	90
33	39	78	86	85	17	35	37	62	97	62	57	8	44	65	21	95	45	77	32
98	86	100	29	34	40	55	11	43	51	15	54	44	57	63	9	84	24	6	52
50	51	46	73	52	32	45	51	100	49	9	6	89	17	97	65	40	75	91	81
49	49	65	75	75	84	27	86	45	60	41	18	30	66	39	71	25	17	80	72
81	24	30	12	63	14	51	72	13	75	35	19	76	71	89	30	23	91	46	6
57	42	39	91	3	64	90	88	66	12	39	65	66	24	69	73	47	65	88	88
13	96	17	41	6	1	42	40	89	12	26	35	58	43	28	53	32	31	30  47];

for i=1:20
    time_start27_2=clock;
    [Nchrom result]=TS(P);
    time_end27_2=clock;
    time27_2=etime(time_end27_2,time_start27_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time27_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec37',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(27);
     title('Rec37'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==27 & runcount2==3


P =[
    
3	64	92	79	4	67	69	89	50	9	2	7	42	87	4	93	7	21	14	29
71	63	89	2	95	21	27	56	31	17	24	5	56	22	71	83	71	31	80	47
4	39	31	64	41	85	30	58	81	92	19	59	78	7	62	74	7	99	47	35
33	3	86	65	46	44	23	69	81	95	5	16	63	77	70	88	46	35	82	93
13	90	44	27	42	10	72	88	34	13	23	51	91	95	12	76	41	77	78	45
23	62	25	100	81	17	68	36	70	55	41	62	67	46	30	10	72	84	52	37
68	4	69	56	45	29	30	64	44	59	50	72	19	40	92	88	45	43	46	45
77	27	44	95	37	29	100	45	36	85	69	30	3	15	90	35	88	64	27	66
6	68	42	39	87	29	44	76	51	18	39	9	99	30	40	98	57	84	87	24
34	87	81	37	51	66	56	81	17	70	27	8	10	71	86	51	31	64	44	67
65	70	2	63	7	99	51	9	90	77	26	50	68	50	93	92	15	88	40	68
29	28	73	14	60	15	72	34	50	100	53	83	26	3	55	45	38	70	42	27
82	97	86	15	41	25	87	53	1	25	50	81	64	90	89	58	56	43	42	67
2	38	58	14	3	65	88	90	72	62	84	43	87	98	36	5	48	70	57	35
94	37	31	83	26	96	92	94	19	47	48	91	24	37	64	85	18	36	30	6
89	5	72	23	16	3	40	37	21	42	58	75	31	43	66	19	96	52	27	78
40	78	75	55	2	98	1	19	83	33	57	67	87	78	58	58	38	54	41	74
28	16	55	29	38	16	66	63	35	30	12	67	96	27	82	74	22	3	90	43
57	6	55	18	4	19	53	17	31	69	15	97	88	100	6	66	54	84	14	58
56	59	42	20	5	92	3	54	51	11	83	6	19	35	22	58	62	10	83	17
82	10	9	59	71	47	84	74	99	42	59	68	67	92	47	97	3	16	86	45
12	21	72	83	56	19	89	100	6	74	10	80	38	57	23	57	54	62	43	89
52	77	74	66	40	69	34	79	25	42	27	67	61	40	18	37	22	35	95	24
32	90	82	7	27	83	61	86	38	6	29	76	90	78	23	60	36	45	8	46
6	94	88	27	48	73	38	19	47	54	56	82	6	33	56	75	50	29	77	81
53	52	10	77	56	73	57	1	84	95	78	82	13	88	59	54	45	48	16	75
71	46	90	47	12	7	51	38	19	47	46	100	41	57	100	97	24	87	70	3
50	5	30	86	22	100	10	43	57	80	11	13	26	35	66	98	23	77	31	26
30	33	34	5	65	65	30	42	86	12	57	59	40	37	23	33	96	30	62	67
24	98	2	10	29	43	83	14	69	58	32	92	65	81	30	95	62	76	87	99
66	93	57	28	24	3	69	66	92	62	9	94	63	84	35	38	58	8	30	52
17	34	47	16	87	36	10	26	64	91	87	67	18	88	11	43	45	43	40	80
64	64	45	53	78	59	55	48	22	36	89	43	42	61	57	14	9	22	90	63
17	51	51	44	82	14	77	14	27	16	64	76	71	95	95	81	60	14	78	6
12	85	87	18	12	69	75	27	65	72	86	45	66	6	75	98	35	11	28	39
11	84	3	30	4	17	73	17	47	71	51	55	12	37	71	46	94	29	88	16
98	91	70	59	17	73	18	38	9	6	85	36	21	56	79	28	23	10	32	17
86	73	89	11	37	80	85	71	12	94	36	42	29	54	24	75	34	23	58	47
10	22	82	15	77	6	71	20	41	77	76	54	96	48	55	41	62	59	90	35
31	55	98	26	72	43	1	15	7	22	5	75	8	81	44	6	69	35	76	36
35	14	10	23	82	7	21	11	48	22	46	36	77	21	91	75	39	94	89	29
32	66	16	11	94	42	7	86	22	93	47	91	38	58	18	77	85	2	28	20
60	4	41	20	19	13	56	47	18	77	81	20	52	11	73	67	42	52	16	38
78	45	32	4	92	14	92	22	44	43	48	28	5	21	32	25	70	62	2	38
73	31	63	44	74	62	63	66	38	82	70	44	9	56	91	55	57	72	59	99
55	30	32	44	52	98	43	59	60	11	96	23	98	8	75	87	12	51	86	26
61	32	64	33	37	91	30	6	96	73	100	45	35	94	31	75	72	91	6	49
51	56	5	66	63	31	48	36	57	35	80	14	4	56	34	1	98	9	67	23
12	44	30	23	93	37	44	4	80	88	59	60	17	61	81	67	76	46	44	27
54	63	38	9	12	50	93	90	24	51	85	38	10	3	96	4	16	71	33	65
13	5	50	53	31	38	93	98	76	64	33	27	44	97	28	67	55	75	60	68
51	88	17	10	86	93	67	58	47	96	1	32	4	86	49	34	53	76	72	91
53	53	12	60	38	32	64	25	73	39	11	84	2	37	59	12	97	15	42	12
30	67	32	7	73	98	58	79	15	10	13	35	74	43	81	29	97	61	70	37
18	24	1	82	2	57	45	23	58	51	80	67	80	20	63	41	89	5	78	95
78	39	69	38	61	1	51	88	14	29	10	84	6	11	79	26	34	63	15	42
95	56	7	55	10	48	24	29	18	36	28	15	64	83	27	90	19	80	55	55
82	42	15	39	36	40	36	25	32	90	80	16	89	29	31	62	54	21	95	42
74	88	16	18	50	45	87	81	41	32	41	65	42	64	38	98	74	79	60	30
31	11	59	48	87	54	99	26	57	31	9	68	10	32	23	76	42	71	98	75
40	55	17	8	9	84	22	16	14	78	8	54	2	100	84	1	43	40	82	56
11	86	88	2	1	78	28	29	75	90	86	79	56	60	44	3	87	52	10	79
81	97	95	62	74	4	17	71	26	9	16	21	31	28	52	37	11	99	7	72
10	4	89	40	65	52	11	72	76	4	98	85	15	48	81	83	76	100	19	91
85	49	40	18	34	41	59	85	62	65	53	2	17	87	30	45	68	95	22	15
16	1	49	99	67	12	35	91	46	10	31	25	74	36	22	52	97	53	14	49
40	51	39	14	75	33	36	94	12	82	6	34	47	13	5	60	100	64	17	23
17	16	57	16	94	95	87	25	72	47	75	35	21	60	53	48	37	48	80	90
33	39	78	86	85	17	35	37	62	97	62	57	8	44	65	21	95	45	77	32
98	86	100	29	34	40	55	11	43	51	15	54	44	57	63	9	84	24	6	52
50	51	46	73	52	32	45	51	100	49	9	6	89	17	97	65	40	75	91	81
49	49	65	75	75	84	27	86	45	60	41	18	30	66	39	71	25	17	80	72
81	24	30	12	63	14	51	72	13	75	35	19	76	71	89	30	23	91	46	6
57	42	39	91	3	64	90	88	66	12	39	65	66	24	69	73	47	65	88	88
13	96	17	41	6	1	42	40	89	12	26	35	58	43	28	53	32	31	30  47];

for i=1:20
    time_start27_3=clock;
    [FF variable]=GATS2(P);
    time_end27_3=clock;
    time27_3=etime(time_end27_3,time_start27_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time27_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec37',{'pailie','fitness','suanfa','time'},expdata);
    figure(27);
     title('Rec37'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 
 

    
 %reC39

elseif runcount1==28 & runcount2==1


P =[
55	40	64	57	84	85	40	96	68	37	70	48	85	67	43	47	35	69	72	51
24	12	19	81	46	1	88	66	16	20	41	75	85	16	41	18	31	57	77	26
81	90	30	12	61	31	69	13	6	51	46	75	43	70	99	81	23	33	94	39
84	10	89	73	60	86	49	36	44	14	26	21	37	89	36	86	66	33	15	14
10	34	14	13	97	2	21	59	59	21	51	12	72	61	92	7	38	17	58	99
64	47	46	6	51	40	2	29	5	7	11	71	78	95	35	40	45	72	65	68
77	60	53	50	28	86	35	21	63	35	24	47	9	27	58	10	17	8	3	19
3	8	27	68	57	51	86	32	38	89	32	12	46	19	78	66	8	61	64	76
22	54	84	9	93	70	48	86	57	81	2	66	92	56	36	80	99	92	65	86
37	83	68	45	15	6	37	32	78	46	26	32	78	50	100	51	92	88	48	25
80	6	46	77	28	43	96	43	79	46	22	58	58	36	63	3	19	58	82	88
5	58	9	27	62	92	93	17	64	66	32	17	12	75	40	84	34	40	57	2
91	1	75	43	72	90	19	78	64	18	23	9	45	54	76	68	17	94	91	13
44	21	86	99	36	98	92	74	33	36	87	56	86	82	36	52	72	5	27	95
92	28	9	93	61	1	53	79	51	83	41	7	90	97	12	61	29	86	31	47
90	59	37	49	75	10	70	91	23	45	28	36	37	58	23	42	43	71	96	92
19	75	86	16	33	62	36	34	78	31	14	41	31	52	10	70	93	22	38	78
83	60	99	66	15	16	67	55	71	78	93	45	2	91	41	42	84	24	1	80
11	28	43	98	26	60	5	29	82	47	80	96	5	9	7	82	46	90	51	94
58	12	10	36	95	5	18	54	15	25	19	69	19	67	26	39	34	53	80	46
4	75	17	28	78	85	98	53	100	21	76	62	50	53	41	85	27	76	6	83
54	1	7	48	52	62	62	75	92	71	44	97	26	76	17	20	29	45	70	78
38	3	47	93	25	22	52	94	71	38	40	24	3	72	48	67	72	70	41	31
9	16	29	87	24	76	36	6	40	6	5	16	59	3	50	74	8	87	9	64
48	1	69	80	5	59	6	37	30	87	8	71	1	55	66	15	18	58	93	26
59	44	11	43	47	34	78	35	96	16	41	14	57	37	63	88	7	67	35	91
72	56	21	76	56	85	95	72	17	55	19	91	83	88	33	17	5	27	1	56
42	72	92	2	60	23	25	48	98	89	87	77	57	66	94	49	65	73	84	46
49	54	41	70	15	85	58	85	68	30	11	70	85	58	87	59	68	65	1	9
96	88	10	53	100	32	14	33	83	13	82	94	97	76	80	45	18	91	94	18
15	84	66	49	20	49	33	64	21	99	20	97	46	54	64	30	45	61	31	71
58	79	1	81	4	47	83	78	88	74	64	52	13	55	58	63	5	10	4	92
8	34	33	99	8	63	57	97	14	49	83	58	2	63	3	17	75	100	29	30
66	34	4	76	10	57	70	70	52	61	70	39	44	91	66	91	62	16	50	58
65	90	81	10	16	15	66	71	83	69	40	42	92	73	40	8	94	71	32	75
58	38	56	25	56	48	12	97	12	60	36	42	27	70	42	16	27	98	69	3
24	40	46	68	83	92	100	73	67	46	26	36	52	70	14	89	40	61	78	91
69	81	94	14	78	9	47	46	4	60	2	48	99	82	24	26	38	43	100	13
23	72	66	61	46	83	95	91	3	66	81	26	21	43	62	49	51	57	3	67
39	49	55	32	16	26	12	5	68	48	4	45	98	13	47	8	32	39	80	77
99	73	79	76	42	73	89	13	28	18	40	2	35	78	21	75	63	48	47	91
5	30	78	66	5	87	44	62	39	12	80	21	62	50	51	50	47	72	46	82
89	30	22	100	8	52	19	26	81	89	42	50	32	64	29	55	15	21	45	49
4	11	100	3	83	79	81	3	57	38	67	62	27	81	72	39	21	30	36	16
31	32	32	22	83	6	23	17	97	67	23	57	50	88	23	75	44	62	36	30
74	80	59	31	88	91	61	16	57	14	3	57	32	94	49	63	90	2	87	65
63	66	47	29	4	22	38	74	16	39	23	12	27	37	41	25	87	60	57	20
52	25	91	38	58	10	21	89	79	29	25	94	14	77	18	9	92	74	37	18
21	18	5	8	7	90	2	85	74	93	77	1	99	99	20	90	82	3	45	8
75	32	34	11	30	23	99	10	58	69	71	58	11	15	17	65	64	34	23	62
44	77	44	47	32	95	53	37	9	16	25	13	4	62	99	58	67	77	39	80
82	90	26	38	41	17	31	65	33	21	79	39	59	98	83	18	45	69	84	85
69	31	99	33	14	25	27	17	59	95	2	35	80	12	13	18	79	70	75	25
10	86	5	5	30	80	57	42	41	74	85	23	97	13	55	56	72	67	55	73
33	66	10	54	92	68	62	14	60	19	47	54	64	38	1	56	55	70	91	29
95	7	7	1	32	100	12	30	20	15	28	99	62	47	69	66	82	15	75	15
75	70	13	97	4	12	97	14	51	74	96	57	94	26	1	60	33	64	25	81
77	41	71	13	87	65	35	14	8	32	44	52	91	87	64	36	13	1	82	98
31	30	47	49	86	44	68	4	69	49	89	33	7	65	50	18	50	39	14	67
91	75	33	29	31	61	63	83	41	11	72	72	22	22	76	54	1	13	13	10
38	35	48	99	76	51	12	74	52	30	61	69	41	42	84	17	45	84	95	76
77	97	32	35	2	76	33	25	57	41	49	46	93	38	43	6	86	38	4	38
36	72	54	34	12	21	68	9	36	5	51	52	33	45	43	44	54	85	7	94
70	95	5	20	37	97	84	26	94	8	12	60	40	23	2	80	4	63	95	69
60	27	3	41	32	41	73	98	60	62	97	69	20	60	63	87	15	31	86	10
9	55	89	71	75	13	52	75	89	1	98	3	2	65	92	64	92	76	22	91
48	90	31	8	72	99	64	28	60	88	34	9	41	76	82	34	65	8	70	10
32	66	22	76	52	10	75	58	79	7	46	62	16	51	49	45	89	64	23	92
39	46	78	22	70	83	79	87	76	70	2	59	33	79	37	72	42	4	97	83
75	15	41	21	6	77	91	63	3	13	93	24	20	69	12	11	31	15	35	58
69	84	79	71	64	79	55	61	43	97	37	6	32	58	66	88	84	7	4	16
76	89	84	96	74	100	37	79	98	7	77	77	50	6	17	50	56	17	96	79
76	91	73	43	91	76	30	39	99	55	78	38	78	100	6	70	28	4	28	95
73	76	88	86	94	68	51	91	1	77	34	9	45	50	2	48	3	56	43	40
97	55	97	24	89	61	41	8	83	33	61	42	6	92	95	6	11	83	8	10];

figure(28)
title('Rec39'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on
for i=1:20
    time_start28_1=clock;
    [FF variable]=fss4(P);
    time_end28_1=clock;
    time28_1=etime(time_end28_1,time_start28_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time28_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec39',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(28);
     title('Rec39'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
     
end 

elseif runcount1==28 & runcount2==2


P =[
55	40	64	57	84	85	40	96	68	37	70	48	85	67	43	47	35	69	72	51
24	12	19	81	46	1	88	66	16	20	41	75	85	16	41	18	31	57	77	26
81	90	30	12	61	31	69	13	6	51	46	75	43	70	99	81	23	33	94	39
84	10	89	73	60	86	49	36	44	14	26	21	37	89	36	86	66	33	15	14
10	34	14	13	97	2	21	59	59	21	51	12	72	61	92	7	38	17	58	99
64	47	46	6	51	40	2	29	5	7	11	71	78	95	35	40	45	72	65	68
77	60	53	50	28	86	35	21	63	35	24	47	9	27	58	10	17	8	3	19
3	8	27	68	57	51	86	32	38	89	32	12	46	19	78	66	8	61	64	76
22	54	84	9	93	70	48	86	57	81	2	66	92	56	36	80	99	92	65	86
37	83	68	45	15	6	37	32	78	46	26	32	78	50	100	51	92	88	48	25
80	6	46	77	28	43	96	43	79	46	22	58	58	36	63	3	19	58	82	88
5	58	9	27	62	92	93	17	64	66	32	17	12	75	40	84	34	40	57	2
91	1	75	43	72	90	19	78	64	18	23	9	45	54	76	68	17	94	91	13
44	21	86	99	36	98	92	74	33	36	87	56	86	82	36	52	72	5	27	95
92	28	9	93	61	1	53	79	51	83	41	7	90	97	12	61	29	86	31	47
90	59	37	49	75	10	70	91	23	45	28	36	37	58	23	42	43	71	96	92
19	75	86	16	33	62	36	34	78	31	14	41	31	52	10	70	93	22	38	78
83	60	99	66	15	16	67	55	71	78	93	45	2	91	41	42	84	24	1	80
11	28	43	98	26	60	5	29	82	47	80	96	5	9	7	82	46	90	51	94
58	12	10	36	95	5	18	54	15	25	19	69	19	67	26	39	34	53	80	46
4	75	17	28	78	85	98	53	100	21	76	62	50	53	41	85	27	76	6	83
54	1	7	48	52	62	62	75	92	71	44	97	26	76	17	20	29	45	70	78
38	3	47	93	25	22	52	94	71	38	40	24	3	72	48	67	72	70	41	31
9	16	29	87	24	76	36	6	40	6	5	16	59	3	50	74	8	87	9	64
48	1	69	80	5	59	6	37	30	87	8	71	1	55	66	15	18	58	93	26
59	44	11	43	47	34	78	35	96	16	41	14	57	37	63	88	7	67	35	91
72	56	21	76	56	85	95	72	17	55	19	91	83	88	33	17	5	27	1	56
42	72	92	2	60	23	25	48	98	89	87	77	57	66	94	49	65	73	84	46
49	54	41	70	15	85	58	85	68	30	11	70	85	58	87	59	68	65	1	9
96	88	10	53	100	32	14	33	83	13	82	94	97	76	80	45	18	91	94	18
15	84	66	49	20	49	33	64	21	99	20	97	46	54	64	30	45	61	31	71
58	79	1	81	4	47	83	78	88	74	64	52	13	55	58	63	5	10	4	92
8	34	33	99	8	63	57	97	14	49	83	58	2	63	3	17	75	100	29	30
66	34	4	76	10	57	70	70	52	61	70	39	44	91	66	91	62	16	50	58
65	90	81	10	16	15	66	71	83	69	40	42	92	73	40	8	94	71	32	75
58	38	56	25	56	48	12	97	12	60	36	42	27	70	42	16	27	98	69	3
24	40	46	68	83	92	100	73	67	46	26	36	52	70	14	89	40	61	78	91
69	81	94	14	78	9	47	46	4	60	2	48	99	82	24	26	38	43	100	13
23	72	66	61	46	83	95	91	3	66	81	26	21	43	62	49	51	57	3	67
39	49	55	32	16	26	12	5	68	48	4	45	98	13	47	8	32	39	80	77
99	73	79	76	42	73	89	13	28	18	40	2	35	78	21	75	63	48	47	91
5	30	78	66	5	87	44	62	39	12	80	21	62	50	51	50	47	72	46	82
89	30	22	100	8	52	19	26	81	89	42	50	32	64	29	55	15	21	45	49
4	11	100	3	83	79	81	3	57	38	67	62	27	81	72	39	21	30	36	16
31	32	32	22	83	6	23	17	97	67	23	57	50	88	23	75	44	62	36	30
74	80	59	31	88	91	61	16	57	14	3	57	32	94	49	63	90	2	87	65
63	66	47	29	4	22	38	74	16	39	23	12	27	37	41	25	87	60	57	20
52	25	91	38	58	10	21	89	79	29	25	94	14	77	18	9	92	74	37	18
21	18	5	8	7	90	2	85	74	93	77	1	99	99	20	90	82	3	45	8
75	32	34	11	30	23	99	10	58	69	71	58	11	15	17	65	64	34	23	62
44	77	44	47	32	95	53	37	9	16	25	13	4	62	99	58	67	77	39	80
82	90	26	38	41	17	31	65	33	21	79	39	59	98	83	18	45	69	84	85
69	31	99	33	14	25	27	17	59	95	2	35	80	12	13	18	79	70	75	25
10	86	5	5	30	80	57	42	41	74	85	23	97	13	55	56	72	67	55	73
33	66	10	54	92	68	62	14	60	19	47	54	64	38	1	56	55	70	91	29
95	7	7	1	32	100	12	30	20	15	28	99	62	47	69	66	82	15	75	15
75	70	13	97	4	12	97	14	51	74	96	57	94	26	1	60	33	64	25	81
77	41	71	13	87	65	35	14	8	32	44	52	91	87	64	36	13	1	82	98
31	30	47	49	86	44	68	4	69	49	89	33	7	65	50	18	50	39	14	67
91	75	33	29	31	61	63	83	41	11	72	72	22	22	76	54	1	13	13	10
38	35	48	99	76	51	12	74	52	30	61	69	41	42	84	17	45	84	95	76
77	97	32	35	2	76	33	25	57	41	49	46	93	38	43	6	86	38	4	38
36	72	54	34	12	21	68	9	36	5	51	52	33	45	43	44	54	85	7	94
70	95	5	20	37	97	84	26	94	8	12	60	40	23	2	80	4	63	95	69
60	27	3	41	32	41	73	98	60	62	97	69	20	60	63	87	15	31	86	10
9	55	89	71	75	13	52	75	89	1	98	3	2	65	92	64	92	76	22	91
48	90	31	8	72	99	64	28	60	88	34	9	41	76	82	34	65	8	70	10
32	66	22	76	52	10	75	58	79	7	46	62	16	51	49	45	89	64	23	92
39	46	78	22	70	83	79	87	76	70	2	59	33	79	37	72	42	4	97	83
75	15	41	21	6	77	91	63	3	13	93	24	20	69	12	11	31	15	35	58
69	84	79	71	64	79	55	61	43	97	37	6	32	58	66	88	84	7	4	16
76	89	84	96	74	100	37	79	98	7	77	77	50	6	17	50	56	17	96	79
76	91	73	43	91	76	30	39	99	55	78	38	78	100	6	70	28	4	28	95
73	76	88	86	94	68	51	91	1	77	34	9	45	50	2	48	3	56	43	40
97	55	97	24	89	61	41	8	83	33	61	42	6	92	95	6	11	83	8	10];

for i=1:20
    time_start28_2=clock;
    [Nchrom result]=TS(P);
    time_end28_2=clock;
    time28_2=etime(time_end28_2,time_start28_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time28_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec39',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(28);
     title('Rec39'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==28 & runcount2==3


P =[
55	40	64	57	84	85	40	96	68	37	70	48	85	67	43	47	35	69	72	51
24	12	19	81	46	1	88	66	16	20	41	75	85	16	41	18	31	57	77	26
81	90	30	12	61	31	69	13	6	51	46	75	43	70	99	81	23	33	94	39
84	10	89	73	60	86	49	36	44	14	26	21	37	89	36	86	66	33	15	14
10	34	14	13	97	2	21	59	59	21	51	12	72	61	92	7	38	17	58	99
64	47	46	6	51	40	2	29	5	7	11	71	78	95	35	40	45	72	65	68
77	60	53	50	28	86	35	21	63	35	24	47	9	27	58	10	17	8	3	19
3	8	27	68	57	51	86	32	38	89	32	12	46	19	78	66	8	61	64	76
22	54	84	9	93	70	48	86	57	81	2	66	92	56	36	80	99	92	65	86
37	83	68	45	15	6	37	32	78	46	26	32	78	50	100	51	92	88	48	25
80	6	46	77	28	43	96	43	79	46	22	58	58	36	63	3	19	58	82	88
5	58	9	27	62	92	93	17	64	66	32	17	12	75	40	84	34	40	57	2
91	1	75	43	72	90	19	78	64	18	23	9	45	54	76	68	17	94	91	13
44	21	86	99	36	98	92	74	33	36	87	56	86	82	36	52	72	5	27	95
92	28	9	93	61	1	53	79	51	83	41	7	90	97	12	61	29	86	31	47
90	59	37	49	75	10	70	91	23	45	28	36	37	58	23	42	43	71	96	92
19	75	86	16	33	62	36	34	78	31	14	41	31	52	10	70	93	22	38	78
83	60	99	66	15	16	67	55	71	78	93	45	2	91	41	42	84	24	1	80
11	28	43	98	26	60	5	29	82	47	80	96	5	9	7	82	46	90	51	94
58	12	10	36	95	5	18	54	15	25	19	69	19	67	26	39	34	53	80	46
4	75	17	28	78	85	98	53	100	21	76	62	50	53	41	85	27	76	6	83
54	1	7	48	52	62	62	75	92	71	44	97	26	76	17	20	29	45	70	78
38	3	47	93	25	22	52	94	71	38	40	24	3	72	48	67	72	70	41	31
9	16	29	87	24	76	36	6	40	6	5	16	59	3	50	74	8	87	9	64
48	1	69	80	5	59	6	37	30	87	8	71	1	55	66	15	18	58	93	26
59	44	11	43	47	34	78	35	96	16	41	14	57	37	63	88	7	67	35	91
72	56	21	76	56	85	95	72	17	55	19	91	83	88	33	17	5	27	1	56
42	72	92	2	60	23	25	48	98	89	87	77	57	66	94	49	65	73	84	46
49	54	41	70	15	85	58	85	68	30	11	70	85	58	87	59	68	65	1	9
96	88	10	53	100	32	14	33	83	13	82	94	97	76	80	45	18	91	94	18
15	84	66	49	20	49	33	64	21	99	20	97	46	54	64	30	45	61	31	71
58	79	1	81	4	47	83	78	88	74	64	52	13	55	58	63	5	10	4	92
8	34	33	99	8	63	57	97	14	49	83	58	2	63	3	17	75	100	29	30
66	34	4	76	10	57	70	70	52	61	70	39	44	91	66	91	62	16	50	58
65	90	81	10	16	15	66	71	83	69	40	42	92	73	40	8	94	71	32	75
58	38	56	25	56	48	12	97	12	60	36	42	27	70	42	16	27	98	69	3
24	40	46	68	83	92	100	73	67	46	26	36	52	70	14	89	40	61	78	91
69	81	94	14	78	9	47	46	4	60	2	48	99	82	24	26	38	43	100	13
23	72	66	61	46	83	95	91	3	66	81	26	21	43	62	49	51	57	3	67
39	49	55	32	16	26	12	5	68	48	4	45	98	13	47	8	32	39	80	77
99	73	79	76	42	73	89	13	28	18	40	2	35	78	21	75	63	48	47	91
5	30	78	66	5	87	44	62	39	12	80	21	62	50	51	50	47	72	46	82
89	30	22	100	8	52	19	26	81	89	42	50	32	64	29	55	15	21	45	49
4	11	100	3	83	79	81	3	57	38	67	62	27	81	72	39	21	30	36	16
31	32	32	22	83	6	23	17	97	67	23	57	50	88	23	75	44	62	36	30
74	80	59	31	88	91	61	16	57	14	3	57	32	94	49	63	90	2	87	65
63	66	47	29	4	22	38	74	16	39	23	12	27	37	41	25	87	60	57	20
52	25	91	38	58	10	21	89	79	29	25	94	14	77	18	9	92	74	37	18
21	18	5	8	7	90	2	85	74	93	77	1	99	99	20	90	82	3	45	8
75	32	34	11	30	23	99	10	58	69	71	58	11	15	17	65	64	34	23	62
44	77	44	47	32	95	53	37	9	16	25	13	4	62	99	58	67	77	39	80
82	90	26	38	41	17	31	65	33	21	79	39	59	98	83	18	45	69	84	85
69	31	99	33	14	25	27	17	59	95	2	35	80	12	13	18	79	70	75	25
10	86	5	5	30	80	57	42	41	74	85	23	97	13	55	56	72	67	55	73
33	66	10	54	92	68	62	14	60	19	47	54	64	38	1	56	55	70	91	29
95	7	7	1	32	100	12	30	20	15	28	99	62	47	69	66	82	15	75	15
75	70	13	97	4	12	97	14	51	74	96	57	94	26	1	60	33	64	25	81
77	41	71	13	87	65	35	14	8	32	44	52	91	87	64	36	13	1	82	98
31	30	47	49	86	44	68	4	69	49	89	33	7	65	50	18	50	39	14	67
91	75	33	29	31	61	63	83	41	11	72	72	22	22	76	54	1	13	13	10
38	35	48	99	76	51	12	74	52	30	61	69	41	42	84	17	45	84	95	76
77	97	32	35	2	76	33	25	57	41	49	46	93	38	43	6	86	38	4	38
36	72	54	34	12	21	68	9	36	5	51	52	33	45	43	44	54	85	7	94
70	95	5	20	37	97	84	26	94	8	12	60	40	23	2	80	4	63	95	69
60	27	3	41	32	41	73	98	60	62	97	69	20	60	63	87	15	31	86	10
9	55	89	71	75	13	52	75	89	1	98	3	2	65	92	64	92	76	22	91
48	90	31	8	72	99	64	28	60	88	34	9	41	76	82	34	65	8	70	10
32	66	22	76	52	10	75	58	79	7	46	62	16	51	49	45	89	64	23	92
39	46	78	22	70	83	79	87	76	70	2	59	33	79	37	72	42	4	97	83
75	15	41	21	6	77	91	63	3	13	93	24	20	69	12	11	31	15	35	58
69	84	79	71	64	79	55	61	43	97	37	6	32	58	66	88	84	7	4	16
76	89	84	96	74	100	37	79	98	7	77	77	50	6	17	50	56	17	96	79
76	91	73	43	91	76	30	39	99	55	78	38	78	100	6	70	28	4	28	95
73	76	88	86	94	68	51	91	1	77	34	9	45	50	2	48	3	56	43	40
97	55	97	24	89	61	41	8	83	33	61	42	6	92	95	6	11	83	8	10];

for i=1:20
    time_start28_3=clock;
    [FF variable]=GATS2(P);
    time_end28_3=clock;
    time28_3=etime(time_end28_3,time_start28_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time28_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec39',{'pailie','fitness','suanfa','time'},expdata);
    figure(28);
     title('Rec39'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 



%reC41

elseif runcount1==29 & runcount2==1


P=[ 88    49    15    75    21     6    79    74    45    63    20    18    13    64     3    13     1    80    15    93
    50    16    58    11    21    82    23    33     2    95    19    36    18    76    87     1    21    71    89    36
    49    45    92    46    99     1     9    37    99    79    38    68    53    73    92    98    86     3    11    10
    66    95    36    29     8   100    32     8    68    25    44    14    23    40    61    80    74    40    98    63
     6    54    31    33    28    40     7    96    62    70    29    97    57    88    61    43    91    65    92    68
    97    31    45    56    65     7    78    74    61    74    11    65    11    54    85    13    67    90    62    24
    95    63    69    23    47    11    10    40    70    24    32    92    63    98    48    36    55    51    98    55
    80    11    21    82    30    89    97    18    18    31    59    76    20     6    94    86    36    10    18     8
    55    61    42     5    93     1    56    57    61    29    84    40     9    89    90    63    15    51    65    57
    52    23     2    91    41    34    28    29    77    81    24    34    86    83    28    88    20    86     5     1
    24    33    90    65     4    98    81    33    73    72    22    29    32    49    25    12     8    51    30    63
    51    53    25    73    36    29     8    93    76    13    44    26    49    73    23     7    56     7    59    92
    38    69    49    91    16    89    25    57    43    40    83    47    69    66    90    71    71    39    32    61
    15    91    29    15    51    63    74    98    52    14    57    41    45    64    17    28    82    59    18    67
    35    55    57    70    68    61    23    15     8    20     7    81    58    27    22    27    43     2     8    36
    80    22    50     5    24    21    64    31    42    71   100    66    11    42    47    41    34    30    20    15
    54    78    51    91    97     3    14    95     7     2    28    19    36    20    59    69    60    28    95    78
    85    35    27    28    93    93    15    81    84    73    10    88    86    96    51    33    51     8     2    23
    30    28    69    40    40     1    35    86    77    71    87    47    41    32    39    82    60     5    31    73
    67    17    96    75    95    64    65    34    16     6    26    95     7    13    66    90    69    80     1    77
     2    90    49     5    36    43    23    73    55    15    19    54    11    50    99    55    82    19    53     9
    64    56    95    31    68    24    51    78    74    59    84    74    10    80    30     1    27    34    56    67
     7    52    27    74    20    17    17    46    78    23    62    27    83    63    77    75    61    59   100    74
    12    39    61    84    49    59    12   100    97    18    22    12    35    85    81    53    62    57     3    79
    83     3    41    34    32    11    53    90    85    80    54    53    94    57     9    31    36    12     7    55
    50    54    33    22    75    57    83    89    22    71    77    98    17    16    55    33    12    36    80   100
    67    28    30    72     8    10    69    95    13    76    33    21    83    21    35     8    45    65    13    39
    15    87    47    32    85     6     4    31    87     6    88    19    95    59    91    29    13    60    25    19
    97    17    29    76    86     4     3    46    98    97    35    17    85    41    90    95    24     6    56    14
    44    28    42     2    16    92    10    14    28    10    92    62     7     3    25    29     4    15    74    23
    10    56    78    34     4    80    92    33    80    31    99    29    40     5    13    80    11    22    72    68
    75    62    54    19     5     4    41    26    84    71    25    15    89    34    96    20    22    89    67    99
    44    33    12    32    98    25    73    41    94    66    62    44    84     1    41    49    44     2   100    88
    46    79    21    71    89    28    33    53    91    76    26    65    79    41    40    89     5    70    39    34
    36    35    71    60     7    26    85    60    80    88    60    51    55    16    11    90    60    31    77    61
    93    64    80    46     7    53    23    84    89    12    32   100    16    11    96    25    89    46    29    17
    23    51    91     3    68    71    64    76    73    85    33    36    91    38    62    92    97    99    40    76
    55     6    70    30    95    66    50     7    13    68    81     7    35    32     1    14    13     2    75    35
    44    66    10    50    18    49    48    76    12    46    17    87    28    54    30    40    92    92    26    18
    69    92    27    11    92    55    51     7     1    30    10    74    75    90    92    44    14    28    12    75
    36    70    65    87    96    45    75    49    35    57    50    92     5    51    53    23    83    98    75    77
    73    10    90    77    34     6    63    74    92    87    56    88    73    73     7     2    29    11    80    24
    35    49    94     4    37    48    82    81    78     6    69    37    59    18    69    29     7     4    21    40
     3    47    95    15    60     7    24    94    22    25    57    37    67    70    83    77    96    38    16    71
    81    90    34    86    81    45     7    61    79    80    12    11    27    41    15    44     1    98     5    93
    98    90    80    14     6    47    71    55    29    32    51     8    94    67    58    55    52    96    56     3
    10    83    23    22    64    24    86    76    76    67    17     1    47     8    29    57     4    68    62    25
    95    28    82    59    10    12    43    45    50    96    75    89    92    52    69    24    36    74    39     7
    59    13    99    99    24    71    58    12     6    55    20    95    57     7    47    54    53   100    30    23
    31    47    40    39    10    89    75    51    24     4    67    67    98    12    55    71    84    58     2    71
    66    68    98     4    99    76    60    59     7    30    59    80    94    25     9    24    84    83    47    74
    44    36    90    42    44    67     6    60    87    44    64    30    49    35    51    85    34    36    83    82
    70    36    59    25    25    25    30     3    16    81    73    43    95    50    50    53    37     4    51    67
    72    81    70    54    48    33    74    60    76     2     3    66    84     8    97    52    23    96    19    28
     6     5    18    50    41     5     5    31    71    94    97    72    98    69     9    30    48    50    78    88
    52    70    18    63    60    75    15    39    31    68    22    61    40    19    28    60    90    25    47    96
    13    62    14    66    84     4    22    32     9    58    71    55    40    70    22    41    54     9    67    25
    21    91    71    57    18    79    68    84    87    27    59     3    54    56    84    97    70    11     5    74
    29    94    83    61    91    10    20    93    68    60    30    78    60    39    29    75    94    68    55    65
    17    31    67    24    59    34    70    82    82    69    51    80    63     6     1    49     3    41    31    49
    90    89    64    21     1    10    35     1    85    88    14    31    94    66    66    18     4    15    78    97
    77    78    42    50    21    26    58    22    55    79    36    79     6    56    16     6    25     2    63     9
    34    34    94    35    50    92     5    43    98    28    59    99    80    36    70    59    22    38    76     7
    40    19    36    24    41    44    69    90    42    46    51    88    19    94    68    53    75    83    36    41
    99    17    10    90    75    43    68     8    43    69     3    71    55    38    79    85    87    23    85    83
    42    41    84    32    57    75    43    73    81    57    33    95    41     7    94    78    88    70    90    33
    22    26    50    73    15    51    61    83    60    97    83    33    57    60    31    82    34    59    43    13
    20    33    25    63     6     6    14    61    10   100    20    86     8    83    31    70     4    52    61    72
    41    47    51    73     8     3    21    55    85     1    37    75    24    88    63    40     2    33    87    83
    14    81    96     3    25    25    23    39    65    62    50    49    59    10    17    15    59    15    88    46
    93    69    51    76    89    86    86    12    55    68     2    82    93    10    12    45    28    32    55    82
    59    73    34    40    53    20     5    96    85    30    60    72    30    74    89     1    91    47     7    42
    16    79    87    70    98    88    95    41     9    85    16    43     1    13    17    84    50    44    85    97
    94    97    78    63    27    77    98    19     7    93    88    43    59    64    86    16    37    36    56    48
    47    64    98    43    71    98    83    30    83    40    17    45    86    86    14    46     6    57    13    16];

figure(29)
title('Rec41'),hold on
xlabel('time/s'),hold on
ylabel('fitness'),hold on

for i=1:20
    time_start29_1=clock;
    [FF variable]=fss4(P);
    time_end29_1=clock;
    time29_1=etime(time_end29_1,time_start29_1);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GA';
    dd=time29_1;
     expdata={aa,bb,cc,dd};
     fastinsert(conn,'gxpl.dbo.Rec41',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(29);
     title('Rec41'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'b.'),hold on
end 

elseif runcount1==29 & runcount2==2


P=[ 88    49    15    75    21     6    79    74    45    63    20    18    13    64     3    13     1    80    15    93
    50    16    58    11    21    82    23    33     2    95    19    36    18    76    87     1    21    71    89    36
    49    45    92    46    99     1     9    37    99    79    38    68    53    73    92    98    86     3    11    10
    66    95    36    29     8   100    32     8    68    25    44    14    23    40    61    80    74    40    98    63
     6    54    31    33    28    40     7    96    62    70    29    97    57    88    61    43    91    65    92    68
    97    31    45    56    65     7    78    74    61    74    11    65    11    54    85    13    67    90    62    24
    95    63    69    23    47    11    10    40    70    24    32    92    63    98    48    36    55    51    98    55
    80    11    21    82    30    89    97    18    18    31    59    76    20     6    94    86    36    10    18     8
    55    61    42     5    93     1    56    57    61    29    84    40     9    89    90    63    15    51    65    57
    52    23     2    91    41    34    28    29    77    81    24    34    86    83    28    88    20    86     5     1
    24    33    90    65     4    98    81    33    73    72    22    29    32    49    25    12     8    51    30    63
    51    53    25    73    36    29     8    93    76    13    44    26    49    73    23     7    56     7    59    92
    38    69    49    91    16    89    25    57    43    40    83    47    69    66    90    71    71    39    32    61
    15    91    29    15    51    63    74    98    52    14    57    41    45    64    17    28    82    59    18    67
    35    55    57    70    68    61    23    15     8    20     7    81    58    27    22    27    43     2     8    36
    80    22    50     5    24    21    64    31    42    71   100    66    11    42    47    41    34    30    20    15
    54    78    51    91    97     3    14    95     7     2    28    19    36    20    59    69    60    28    95    78
    85    35    27    28    93    93    15    81    84    73    10    88    86    96    51    33    51     8     2    23
    30    28    69    40    40     1    35    86    77    71    87    47    41    32    39    82    60     5    31    73
    67    17    96    75    95    64    65    34    16     6    26    95     7    13    66    90    69    80     1    77
     2    90    49     5    36    43    23    73    55    15    19    54    11    50    99    55    82    19    53     9
    64    56    95    31    68    24    51    78    74    59    84    74    10    80    30     1    27    34    56    67
     7    52    27    74    20    17    17    46    78    23    62    27    83    63    77    75    61    59   100    74
    12    39    61    84    49    59    12   100    97    18    22    12    35    85    81    53    62    57     3    79
    83     3    41    34    32    11    53    90    85    80    54    53    94    57     9    31    36    12     7    55
    50    54    33    22    75    57    83    89    22    71    77    98    17    16    55    33    12    36    80   100
    67    28    30    72     8    10    69    95    13    76    33    21    83    21    35     8    45    65    13    39
    15    87    47    32    85     6     4    31    87     6    88    19    95    59    91    29    13    60    25    19
    97    17    29    76    86     4     3    46    98    97    35    17    85    41    90    95    24     6    56    14
    44    28    42     2    16    92    10    14    28    10    92    62     7     3    25    29     4    15    74    23
    10    56    78    34     4    80    92    33    80    31    99    29    40     5    13    80    11    22    72    68
    75    62    54    19     5     4    41    26    84    71    25    15    89    34    96    20    22    89    67    99
    44    33    12    32    98    25    73    41    94    66    62    44    84     1    41    49    44     2   100    88
    46    79    21    71    89    28    33    53    91    76    26    65    79    41    40    89     5    70    39    34
    36    35    71    60     7    26    85    60    80    88    60    51    55    16    11    90    60    31    77    61
    93    64    80    46     7    53    23    84    89    12    32   100    16    11    96    25    89    46    29    17
    23    51    91     3    68    71    64    76    73    85    33    36    91    38    62    92    97    99    40    76
    55     6    70    30    95    66    50     7    13    68    81     7    35    32     1    14    13     2    75    35
    44    66    10    50    18    49    48    76    12    46    17    87    28    54    30    40    92    92    26    18
    69    92    27    11    92    55    51     7     1    30    10    74    75    90    92    44    14    28    12    75
    36    70    65    87    96    45    75    49    35    57    50    92     5    51    53    23    83    98    75    77
    73    10    90    77    34     6    63    74    92    87    56    88    73    73     7     2    29    11    80    24
    35    49    94     4    37    48    82    81    78     6    69    37    59    18    69    29     7     4    21    40
     3    47    95    15    60     7    24    94    22    25    57    37    67    70    83    77    96    38    16    71
    81    90    34    86    81    45     7    61    79    80    12    11    27    41    15    44     1    98     5    93
    98    90    80    14     6    47    71    55    29    32    51     8    94    67    58    55    52    96    56     3
    10    83    23    22    64    24    86    76    76    67    17     1    47     8    29    57     4    68    62    25
    95    28    82    59    10    12    43    45    50    96    75    89    92    52    69    24    36    74    39     7
    59    13    99    99    24    71    58    12     6    55    20    95    57     7    47    54    53   100    30    23
    31    47    40    39    10    89    75    51    24     4    67    67    98    12    55    71    84    58     2    71
    66    68    98     4    99    76    60    59     7    30    59    80    94    25     9    24    84    83    47    74
    44    36    90    42    44    67     6    60    87    44    64    30    49    35    51    85    34    36    83    82
    70    36    59    25    25    25    30     3    16    81    73    43    95    50    50    53    37     4    51    67
    72    81    70    54    48    33    74    60    76     2     3    66    84     8    97    52    23    96    19    28
     6     5    18    50    41     5     5    31    71    94    97    72    98    69     9    30    48    50    78    88
    52    70    18    63    60    75    15    39    31    68    22    61    40    19    28    60    90    25    47    96
    13    62    14    66    84     4    22    32     9    58    71    55    40    70    22    41    54     9    67    25
    21    91    71    57    18    79    68    84    87    27    59     3    54    56    84    97    70    11     5    74
    29    94    83    61    91    10    20    93    68    60    30    78    60    39    29    75    94    68    55    65
    17    31    67    24    59    34    70    82    82    69    51    80    63     6     1    49     3    41    31    49
    90    89    64    21     1    10    35     1    85    88    14    31    94    66    66    18     4    15    78    97
    77    78    42    50    21    26    58    22    55    79    36    79     6    56    16     6    25     2    63     9
    34    34    94    35    50    92     5    43    98    28    59    99    80    36    70    59    22    38    76     7
    40    19    36    24    41    44    69    90    42    46    51    88    19    94    68    53    75    83    36    41
    99    17    10    90    75    43    68     8    43    69     3    71    55    38    79    85    87    23    85    83
    42    41    84    32    57    75    43    73    81    57    33    95    41     7    94    78    88    70    90    33
    22    26    50    73    15    51    61    83    60    97    83    33    57    60    31    82    34    59    43    13
    20    33    25    63     6     6    14    61    10   100    20    86     8    83    31    70     4    52    61    72
    41    47    51    73     8     3    21    55    85     1    37    75    24    88    63    40     2    33    87    83
    14    81    96     3    25    25    23    39    65    62    50    49    59    10    17    15    59    15    88    46
    93    69    51    76    89    86    86    12    55    68     2    82    93    10    12    45    28    32    55    82
    59    73    34    40    53    20     5    96    85    30    60    72    30    74    89     1    91    47     7    42
    16    79    87    70    98    88    95    41     9    85    16    43     1    13    17    84    50    44    85    97
    94    97    78    63    27    77    98    19     7    93    88    43    59    64    86    16    37    36    56    48
    47    64    98    43    71    98    83    30    83    40    17    45    86    86    14    46     6    57    13    16];

for i=1:20
    time_start29_2=clock;
    [Nchrom result]=TS(P);
    time_end29_2=clock;
    time29_2=etime(time_end29_2,time_start29_2);
    aa=num2str(Nchrom);
    bb=num2str(result);
    cc='TS';
    dd=time29_2;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec41',{'pailie','fitness','suanfa','time'},expdata);
     
     figure(29);
     title('Rec41'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,result,'r.'),hold on
end 

elseif runcount1==29 & runcount2==3


P=[ 88    49    15    75    21     6    79    74    45    63    20    18    13    64     3    13     1    80    15    93
    50    16    58    11    21    82    23    33     2    95    19    36    18    76    87     1    21    71    89    36
    49    45    92    46    99     1     9    37    99    79    38    68    53    73    92    98    86     3    11    10
    66    95    36    29     8   100    32     8    68    25    44    14    23    40    61    80    74    40    98    63
     6    54    31    33    28    40     7    96    62    70    29    97    57    88    61    43    91    65    92    68
    97    31    45    56    65     7    78    74    61    74    11    65    11    54    85    13    67    90    62    24
    95    63    69    23    47    11    10    40    70    24    32    92    63    98    48    36    55    51    98    55
    80    11    21    82    30    89    97    18    18    31    59    76    20     6    94    86    36    10    18     8
    55    61    42     5    93     1    56    57    61    29    84    40     9    89    90    63    15    51    65    57
    52    23     2    91    41    34    28    29    77    81    24    34    86    83    28    88    20    86     5     1
    24    33    90    65     4    98    81    33    73    72    22    29    32    49    25    12     8    51    30    63
    51    53    25    73    36    29     8    93    76    13    44    26    49    73    23     7    56     7    59    92
    38    69    49    91    16    89    25    57    43    40    83    47    69    66    90    71    71    39    32    61
    15    91    29    15    51    63    74    98    52    14    57    41    45    64    17    28    82    59    18    67
    35    55    57    70    68    61    23    15     8    20     7    81    58    27    22    27    43     2     8    36
    80    22    50     5    24    21    64    31    42    71   100    66    11    42    47    41    34    30    20    15
    54    78    51    91    97     3    14    95     7     2    28    19    36    20    59    69    60    28    95    78
    85    35    27    28    93    93    15    81    84    73    10    88    86    96    51    33    51     8     2    23
    30    28    69    40    40     1    35    86    77    71    87    47    41    32    39    82    60     5    31    73
    67    17    96    75    95    64    65    34    16     6    26    95     7    13    66    90    69    80     1    77
     2    90    49     5    36    43    23    73    55    15    19    54    11    50    99    55    82    19    53     9
    64    56    95    31    68    24    51    78    74    59    84    74    10    80    30     1    27    34    56    67
     7    52    27    74    20    17    17    46    78    23    62    27    83    63    77    75    61    59   100    74
    12    39    61    84    49    59    12   100    97    18    22    12    35    85    81    53    62    57     3    79
    83     3    41    34    32    11    53    90    85    80    54    53    94    57     9    31    36    12     7    55
    50    54    33    22    75    57    83    89    22    71    77    98    17    16    55    33    12    36    80   100
    67    28    30    72     8    10    69    95    13    76    33    21    83    21    35     8    45    65    13    39
    15    87    47    32    85     6     4    31    87     6    88    19    95    59    91    29    13    60    25    19
    97    17    29    76    86     4     3    46    98    97    35    17    85    41    90    95    24     6    56    14
    44    28    42     2    16    92    10    14    28    10    92    62     7     3    25    29     4    15    74    23
    10    56    78    34     4    80    92    33    80    31    99    29    40     5    13    80    11    22    72    68
    75    62    54    19     5     4    41    26    84    71    25    15    89    34    96    20    22    89    67    99
    44    33    12    32    98    25    73    41    94    66    62    44    84     1    41    49    44     2   100    88
    46    79    21    71    89    28    33    53    91    76    26    65    79    41    40    89     5    70    39    34
    36    35    71    60     7    26    85    60    80    88    60    51    55    16    11    90    60    31    77    61
    93    64    80    46     7    53    23    84    89    12    32   100    16    11    96    25    89    46    29    17
    23    51    91     3    68    71    64    76    73    85    33    36    91    38    62    92    97    99    40    76
    55     6    70    30    95    66    50     7    13    68    81     7    35    32     1    14    13     2    75    35
    44    66    10    50    18    49    48    76    12    46    17    87    28    54    30    40    92    92    26    18
    69    92    27    11    92    55    51     7     1    30    10    74    75    90    92    44    14    28    12    75
    36    70    65    87    96    45    75    49    35    57    50    92     5    51    53    23    83    98    75    77
    73    10    90    77    34     6    63    74    92    87    56    88    73    73     7     2    29    11    80    24
    35    49    94     4    37    48    82    81    78     6    69    37    59    18    69    29     7     4    21    40
     3    47    95    15    60     7    24    94    22    25    57    37    67    70    83    77    96    38    16    71
    81    90    34    86    81    45     7    61    79    80    12    11    27    41    15    44     1    98     5    93
    98    90    80    14     6    47    71    55    29    32    51     8    94    67    58    55    52    96    56     3
    10    83    23    22    64    24    86    76    76    67    17     1    47     8    29    57     4    68    62    25
    95    28    82    59    10    12    43    45    50    96    75    89    92    52    69    24    36    74    39     7
    59    13    99    99    24    71    58    12     6    55    20    95    57     7    47    54    53   100    30    23
    31    47    40    39    10    89    75    51    24     4    67    67    98    12    55    71    84    58     2    71
    66    68    98     4    99    76    60    59     7    30    59    80    94    25     9    24    84    83    47    74
    44    36    90    42    44    67     6    60    87    44    64    30    49    35    51    85    34    36    83    82
    70    36    59    25    25    25    30     3    16    81    73    43    95    50    50    53    37     4    51    67
    72    81    70    54    48    33    74    60    76     2     3    66    84     8    97    52    23    96    19    28
     6     5    18    50    41     5     5    31    71    94    97    72    98    69     9    30    48    50    78    88
    52    70    18    63    60    75    15    39    31    68    22    61    40    19    28    60    90    25    47    96
    13    62    14    66    84     4    22    32     9    58    71    55    40    70    22    41    54     9    67    25
    21    91    71    57    18    79    68    84    87    27    59     3    54    56    84    97    70    11     5    74
    29    94    83    61    91    10    20    93    68    60    30    78    60    39    29    75    94    68    55    65
    17    31    67    24    59    34    70    82    82    69    51    80    63     6     1    49     3    41    31    49
    90    89    64    21     1    10    35     1    85    88    14    31    94    66    66    18     4    15    78    97
    77    78    42    50    21    26    58    22    55    79    36    79     6    56    16     6    25     2    63     9
    34    34    94    35    50    92     5    43    98    28    59    99    80    36    70    59    22    38    76     7
    40    19    36    24    41    44    69    90    42    46    51    88    19    94    68    53    75    83    36    41
    99    17    10    90    75    43    68     8    43    69     3    71    55    38    79    85    87    23    85    83
    42    41    84    32    57    75    43    73    81    57    33    95    41     7    94    78    88    70    90    33
    22    26    50    73    15    51    61    83    60    97    83    33    57    60    31    82    34    59    43    13
    20    33    25    63     6     6    14    61    10   100    20    86     8    83    31    70     4    52    61    72
    41    47    51    73     8     3    21    55    85     1    37    75    24    88    63    40     2    33    87    83
    14    81    96     3    25    25    23    39    65    62    50    49    59    10    17    15    59    15    88    46
    93    69    51    76    89    86    86    12    55    68     2    82    93    10    12    45    28    32    55    82
    59    73    34    40    53    20     5    96    85    30    60    72    30    74    89     1    91    47     7    42
    16    79    87    70    98    88    95    41     9    85    16    43     1    13    17    84    50    44    85    97
    94    97    78    63    27    77    98    19     7    93    88    43    59    64    86    16    37    36    56    48
    47    64    98    43    71    98    83    30    83    40    17    45    86    86    14    46     6    57    13    16];

for i=1:20
    time_start29_3=clock;
    [FF variable]=GATS2(P);
    time_end29_3=clock;
    time29_3=etime(time_end29_3,time_start29_3);
    
    aa=num2str(FF);
    bb=num2str(variable);
    cc='GATS';
    dd=time29_3;
    expdata={aa,bb,cc,dd};
    fastinsert(conn,'gxpl.dbo.Rec41',{'pailie','fitness','suanfa','time'},expdata);
    figure(29);
     title('Rec41'),hold on
     xlabel('time/s'),hold on
     ylabel('fitness'),hold on
     plot(dd,variable,'g.'),hold on
end 
end
end
end



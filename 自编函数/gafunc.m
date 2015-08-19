function []=gafunc()
P =[8,1,6,7,4;9,9,0,0,3;1,9,8,2,7;9,4,9,0,7;6,8,6,0,1;0,1,7,8,4;2,4,7,6,4;5,9,3,3,6;9,7,6,9,7;9,9,1,0,7];
B=[2,6,6,1];
[n,m]=size(P);
nide=100;
maxgen=300;
preci=fix(log(factorial(n)-0.1)/log(2))+1;
ggap=0.9;
trace=zeros(2,maxgen);
fieldd=[preci;1;factorial(n);1;0;1;1];
chrom=crtbp(100,preci);
gen=0;
t=round(bs2rv(chrom,fieldd));
objective=zeros(n,1);
linum=t(1,1);

for i=1:100
    P=mattra(t(i,1),n);
    objective(i,1)=objv(P);
   
end;

while gen<maxgen
    fitnv=ranking(objective);
    selch=select('sus',chrom,fitnv,ggap);
    selch=recombine('xovsp',selch,0.7);
    selch=mut(selch);
    t=round(bs2rv(selch,fieldd));
 for i=1:90
    P=mattra(t(i,1),n);
    objectivesel(i,1)=objv(P);
     if objective(i+1,1)<objective(i,1)
        linum=t(i,1);
    end;
end;
    [chrom,objective]=reins(chrom,selch,1,1,objective,objectivesel);
    gen=gen+1;
    [Y,I]=min(objective),hold on;
    plot(t(I),Y,'bo');
    trace(1,gen)=max(objective);
    trace(2,gen)=sum(objective)/length(objective);
end;
t=round(bs2rv(chrom,fieldd));


hold on,grid;
plot(t',objective','b*');
plot(trace(1,:)');
hold on;
plot(trace(2,:)','-.');
grid;
legend('解的变化','种群均值的变化');
linum
funtra(n,linum)


    
function y=ROC(sensor,sensorT)
global SENSORNUMBER;

map=sensoru(SENSORNUMBER);
liklihoodratio=zeros(1,size(map,1));
pf=liklihoodratio;
pd=liklihoodratio;

for i=1:1:size(map,1)
    [a b] = puh(map(i,:),sensor,sensorT,0);
    liklihoodratio(i)=b/a;
end
[tmp index]=sort(liklihoodratio);

for i=1:1:size(map,1)
    for j=i:1:size(map,1)
        [a b] = puh(map((index(j)),:),sensor,sensorT,0);
        pf(i)=pf(i)+a;
        pd(i)=pd(i)+b;
    end
end


plot(pf,pd)
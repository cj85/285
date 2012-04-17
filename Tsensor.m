function y=Tsensor(k,map,sensor,sensorT,bestdecision)
global SENSORNUMBER;
global CF;
global CD;
CFK=0;
CDK=0;
[decisionnumber no_use]=size(map);
for i=1:1:decisionnumber
    [puh0 puh1]=puh(map(i,:),sensor,sensorT,k);
    AUK=A(bestdecision,k,map(i,:));
    CFK=CFK+AUK*puh0;
    CDK=CDK+AUK*puh1;
 
end
CFK=CFK*CF;
CDK=CDK*CD;
sensorT(k)=log(CFK/CDK);
if(isnan(sensorT(k)))
    sensorT(k)=0;
end
y=sensorT;
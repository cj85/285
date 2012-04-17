function [outRB bestdecision]=RB(map,centerdecison,sensor,sensorT)
global CF;
global CD;
global C;
[decisionnumber sensornumber]=size(map);
bestdecision=zeros(2^sensornumber,1);
outRB=C;
for i=1:1:decisionnumber
    
    [puh0 puh1]=puh(map(i,:),sensor,sensorT,0);
    if (CF*puh0-CD*puh1)<0
        bestdecision(i)=1;
    end
    outRB=outRB+centerdecison(i)*(CF*puh0-CD*puh1);
end


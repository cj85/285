function [outRB bestdecision]=RB(map,centerdecison,sensor,sensorT)
global CF;
global CD;
[decisionnumber sensornumber]=size(map);
bestdecision=zeros(1,sensornumber^2);
outRB=0;
for i=1:1:decisionnumber
    puh0=1;
    puh1=1;
    for j=1:1:sensornumber
        y1=sensor(1+(j-1)*2,:);
        y0=sensor(2+(j-1)*2,:);
        lammda=log(y1./y0);
        [pf,pd]= f(y0,y1,lammda,sensorT(j));
        if map(i,j)==1
            puh0=puh0*pf;
            puh1=puh1*pd;
        else
            puh0=puh0*(1-pf);
            puh1=puh1*(1-pd);
        end
    end
    if (CF*puh0-CD*puh1)<0
        bestdecision(i)=1;
    end
    outRB=outRB+centerdecison(i)*(CF*puh0-CD*puh1);
end


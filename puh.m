function [puh0 puh1]=puh(onelineofmap,sensor,sensorT,k)
global SENSORNUMBER;
puh0=1;
puh1=1;
for j=1:1:SENSORNUMBER
    if j~=k
        y1=sensor(1+(j-1)*2,:);
        y0=sensor(2+(j-1)*2,:);
        lammda=log(y1./y0);
% lammda=y1./y0;
        [pf,pd]= f(y0,y1,lammda,sensorT(j));
        if onelineofmap(j)==1
            puh0=puh0*pf;
            puh1=puh1*pd;
        else
            puh0=puh0*(1-pf);
            puh1=puh1*(1-pd);
        end
    end
end
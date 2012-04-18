function [RB T]=RBsensor(k,sensor)
global       P0 P1 C10 C11 C00 C01;
y1=sensor(1+(k-1)*2,:);
y0=sensor(2+(k-1)*2,:);
lammda=log(y1./y0);
sensorT=log(P0*(C10-C00))-log(P1*(C01-C11));
[pf pd]=f(y0,y1,lammda,sensorT);
RB=C10*P0+C11*P1+P1*(C01-C11)*(1-pd)-P0*(C10-C00)*(1-pf);
T=sensorT;
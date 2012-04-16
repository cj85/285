function [pf pd]=f(y0,y1,lammda,T)
global RESOLUTION;
filter=lammda>T;
pf=sum(y0.*filter)*RESOLUTION;
pd=sum(y1.*filter)*RESOLUTION;
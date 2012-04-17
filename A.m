function y=A(bestdecision,k,onelineofmap)
global SENSORNUMBER;
allmap=sensoru(SENSORNUMBER);
filter1=onelineofmap;
filter1(k)=0;
filter2=onelineofmap;
filter2(k)=1;
[tmp,r1,tmp2]=intersect(allmap,filter2,'rows');
[tmp,r0,tmp2]=intersect(allmap,filter1,'rows');

y=bestdecision(r1)-bestdecision(r0);


global RESOLUTION CF CD;
CF=1;CD=1;
RESOLUTION=.1;
x=-10:RESOLUTION:14;
y11=pdf(2,x);
y10=pdf(0,x);
y21=pdf(2.3,x);
y20=y10;


centerdecsion=alldecision(2);
[a tmp]=size(centerdecsion);
best=zeros(1,tmp);
for i=1:1:a
    sensorT=[0 0 0 0];
    sensor=[y11;y10;y21;y20];
    [R_B(i) best(1,:)]=RB(sensoru(2),centerdecsion(i,:), sensor,sensorT);
end

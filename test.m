global RESOLUTION CF CD STOP SENSORNUMBER C;
P0=1/2;
P1=1-P0;
C10=1;
C11=0;
C00=0;
C01=1;
CF=P0*(C10-C00);CD=P1(C01-C11);
C=C01*P1+C00*P0;
RESOLUTION=.05;
STOP=0.001;
SENSORNUMBER=7;
x=-10:RESOLUTION:14;
y11=pdf(2,x);
y10=pdf(0,x);
y21=pdf(1,x);
y20=y10;
y31=pdf(3,x);
y30=y10;
y41=pdf(4,x);
y40=y10;
y51=pdf(1.4,x);
y50=y10;
y61=pdf(3.3,x);
y60=y10;;
y71=pdf(2.7,x);
y70=y10;



bestdecision=ceil(randn(2^SENSORNUMBER,1)*.1);
% sensorT=[-10 -10 -10 -10 -10];
sensorT=[-10 -10 -10 -10 -10 -10 -10];
sensor=[y11;y10;y21;y20;y31;y30;y41;y40;y51;y50;y61;y60;y71;y70];
breaksign=1;
while (breaksign<=20)
    [R_B bestdecision(:,1)]=RB(sensoru(SENSORNUMBER),bestdecision, sensor,sensorT);
    R_B
%     out(breaksign)=bestdecision';
    for k=1:1:SENSORNUMBER
        sensorT=Tsensor(k,sensoru(SENSORNUMBER),sensor,sensorT,bestdecision)
    end
    
    [R_B2 tmp]=RB(sensoru(SENSORNUMBER),bestdecision, sensor,sensorT);
    breaksign=breaksign+1;
%     if(R_B-R_B2<STOP)
%         breaksign=0;
%     end
end

R_B2
bestdecision
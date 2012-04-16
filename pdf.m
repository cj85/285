function y=pdf(mean,x)
y=(1/sqrt(2*pi))*exp(-(x-mean).^2/2);
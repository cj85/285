function y=sensoru(number)
total=2^number;
y=zeros(total,number);
for j=1:1:total
    for k=1:1:number
        y(j,k)=bitget(j-1,k);
    end
end

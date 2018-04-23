function [re] = algoPart3(xarray,value_store)
re(1)=0;
%value = zeros(1,3);
%key = fliplr(de2bi(30,16));
key=xarray;
le = numel(xarray);
vl = numel(value_store);
len_key=le;
%value(1)=24956;
%value(2)=25466;
%value(3)=25886;
loop=len_key/8;
result=zeros(1,len_key);
final = zeros(1,8);
%check=(1,len_key);
for i=1:vl
   % disp('hello');
    bin = fliplr(de2bi(value_store(i),len_key));
    for k=1:len_key
        result(k)=xor(bin(k),key(k));
    end
    r=1;
    for j=1:loop
        for p=1:8
            final(p)=result(r);
            r=r+1;
        end
        d=bi2de(fliplr(final));
        if d~=0
            disp(final)
            disp(d)
        end
        
    end
end
end
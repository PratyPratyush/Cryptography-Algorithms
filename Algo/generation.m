%{
function [r9] = generation(xarray,yarray)
arr=[1,numel(xarray)+2];
arr(1)=0;
for i=1:numel(xarray)
    arr(i+1)=xarray(i);
end 
arr(numel(xarray)+2)=0;

r9=zeros(1,numel(yarray));
for j= 1:numel(yarray)
    if yarray(j)==0
       r9(j)= xor(arr(j),arr(j+2));
    else
        r9(j)=xor(arr(j),xor(arr(j+1),arr(j+2)));
    end
end
end
%}
function [r9] = generation(xarray)
arr=[1,numel(xarray)+2];
arr(1)=0;
for i=1:numel(xarray)
    arr(i+1)=xarray(i);
end 
arr(numel(xarray)+2)=0;

r9=zeros(1,numel(xarray));
for j= 1:numel(xarray)
    if xarray(j)==0
       r9(j)= xor(arr(j),arr(j+2));
    else
        r9(j)=xor(arr(j),xor(arr(j+1),arr(j+2)));
    end
end
end
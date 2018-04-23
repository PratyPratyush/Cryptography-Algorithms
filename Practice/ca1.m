clc;
clear all; close all;
M = input('\nEnter the message: ','s');
disp('The binary format');
msglen=length(M);
c=0;
for j= 1:msglen
    for i=0:122
        if strcmp(M(j),char(i))
            c(j)=i;
            %dec2bin1(i);
        end
    end
end
disp('ASCII Code of the entered Message:');
disp(c);
x = input('\nEnter the logic string: ');
xstr=num2str(x);
xarray=zeros(1,numel(xstr));

for i=1:numel(xstr)
    xarray(i)=str2num(xstr(i));
end 
%disp(xarray(4));
arr=[1,numel(xarray)+2];
arr(1)=0;
for i=1:numel(xarray)
    arr(i+1)=xarray(i);
end 
arr(numel(xarray)+2)=0;
disp(arr);
%y1=[0,0,1,0,1,1,0,0];
r9=zeros(1,numel(xarray));
for j= 1:numel(xarray)
    if xarray(j)==0
       r9(j)= xor(arr(j),arr(j+2));
    else
        r9(j)=xor(arr(j),xor(arr(j+1),arr(j+2)));
    end
end
disp('After applying cellular automata...rule 90 and rule 150');

disp(r9);
for k=1:numel(c)
    i=1;
    a=zeros(1,65535);
    d=c(k);
    while d >= 2
        r=rem(d,2);
        if r==1
            a(i)=1;
        else
            a(i)=0;
        end
        i=i+1;
        d=floor(d/2);
    end
    if d == 2
        a(i) = 0;
    else
        a(i) = 1;
    end
    x=[a(8) a(7) a(6) a(5) a(4) a(3) a(2) a(1)];
    disp('binary value of character');
    disp(x);
    
    
    disp('result of generation 1');
    z=zeros(1,8);
    for p=1:8
        z(p)=xor(x(p),arr(p));
        
    end  
    disp(z);
    disp('ending generation');
    disp('------------------------');
    q=bi2de(z);
    disp(q);
    disp('------------------------');
end











%a=zeros(1,5);
%disp(a);
%disp(a(1));
%x=[0,1,0,1,1,0];
%disp(x(2));
clc;
clear;close all;%Clear command window
disp('Diffie Hellman Key Exchange');
disp('-----------------------------------------');
check_prime=0;
while check_prime==0
p = input('input value of p : ');
g = input('input value of g : ');
%msg = input('The msg : ','s');
prime1 = isprime(p);
prime2 = isprime(g);
%disp(prime1);
%disp(prime2);
check_prime= prime1 & prime2;
end
random_a=randi(p-1);
random_b=randi(p-1);
disp(random_a);
disp(random_b);
ga=powermod(g ,random_a ,p);
gb=powermod(g ,random_b ,p);
%disp(ga);
%disp(gb);
result1 = powermod(gb,random_a,p);  
result2 = powermod(ga,random_b,p);
disp(result1);
%disp(result1())
disp(result2);
%z=zeros(1,16);
bin=de2bi(result1,16);   %  key convert in 16 bit  & shared number as a(seed)
flip_bin=fliplr(bin);
%disp(flip_bin)
itrat = mod(result1,9);
if itrat==0
    itrat=9;
end
disp('number of itration')
disp(itrat)
cal = ga*gb;
len = powermod(result1,cal,3);
len1=power(2,len);
len_key=16*len1;
disp('display key len')
xarray=flip_bin;
disp('display xarray')
disp(len_key)
disp(xarray)
if len_key > 16
lo = len_key/16;
result = zeros(1,len_key);
count=1;
for k=1:lo
    for j=1:16
        result(count)=xarray(j);
        count=count+1;
    end
    %disp(xarray);
    xarray = fliplr(xarray);
    %xarray=fliplr(xarray);
end
xarray = result;
end

disp('convert particular bit')
disp(xarray);
%xarray=flip_bin;
%disp(xarray)
for p=1:itrat
        %[xarray]=foo(xarray,yarray,2,dec);
        %[xarray]=generation(xarray,yarray);
       [xarray]=generation(xarray);
        %disp(xarray)
end
disp('After n generation');
disp(xarray);
[algoPart2_value] = algoPart2(xarray);
%{
msg_len = numel(msg);
t1 = len_key/8;
n = msg_len/(len_key/8);
rmd =msg_len/(len_key/8);
p1=1;
if n>0
    for i=1:t1
       dec = double(msg(i)); 
    end
end
if rmd >0
end
%}


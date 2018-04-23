clc;
clear;close all;
x = input('\nEnter the value of initial seed: ','s');
%y = input('\nEnter the value of logic ','s');
n = input('\nEnter the value of iterration ','s');
c =input('\nEnter the message: ','s');
n=str2double(n);
xstr=num2str(x);
xarray=zeros(1,numel(xstr));
%ystr=num2str(y);
%yarray=zeros(1,numel(ystr));
for i=1:numel(xstr)
    xarray(i)=str2double(xstr(i));
    %yarray(i)=str2double(ystr(i));
end 
for p=1:n
        %[xarray]=foo(xarray,yarray,2,dec);
        %[xarray]=generation(xarray,yarray);
        [xarray]=generation(xarray);
        %disp(xarray)
end
% display Key after n generation 
disp(xarray)
    %disp(xa
for k=1:numel(c)
      dec = double(c(k));
      [encryptmsg]=encryptmsg(xarray,dec);
      disp(encryptmsg);
     % for p=1:2
        %[xarray]=foo(xarray,yarray,2,dec);
      %  [xarray]=generation(xarray,yarray);
       % disp(xarray)
      %end
    %disp(xarray)
end
%dec = double(c(1));
%[a]=foo(xarray,yarray,dec);
%disp(a)

function [re] = algoPart2(xarray)
disp('================================');
re(1)=0;
le = numel(xarray);
key=xarray;
disp('binary value of key')
disp(key);
msg = input('The msg : ','s');
%key = fliplr(de2bi(30,16));
len_key=le;

result=zeros(1,le);
msg_len = numel(msg);
t1 = len_key/8;
n = msg_len/(len_key/8);
disp('value of n')
disp(n)
disp('value of rmd')
rmd =mod(msg_len,(len_key/8));
disp(rmd);

v = fix(n);
if rmd ~=0
   v=v+1; 
end
value_store = zeros(1,v);
s1=1;
p1=1;
m1=1;
if n>0
  for r=1:n
    for i=1:t1
       dec = double(msg(m1)); 
       bin = fliplr(de2bi(dec,8));
       for j=1:8
           result(p1)=xor(key(p1),bin(j));
           p1=p1+1;
       end
       m1=m1+1;
    end
    disp(result);
    value_store(s1)=(bi2de(fliplr(result)));
    %disp(value_store);
    s1=s1+1;
    p1=1;
  end
end
p1=1;
if rmd >0
    for a=1:rmd
       dec = double(msg(m1)); 
       bin = fliplr(de2bi(dec,8));
       for j=1:8
           result(p1)=xor(key(p1),bin(j));
           p1=p1+1;
       end
       m1=m1+1;
    end
z=t1-rmd;
addend = zeros(1,8);
    for a=1:z
         for j=1:8
           result(p1)=xor(key(p1),addend(j));
           p1=p1+1;
         end
    end
disp(result);
value_store(s1)=(bi2de(fliplr(result)));
%disp(value_store);
end
disp(value_store);
for z=1:numel(value_store)
    ch=char(value_store(z));
    disp(ch);
end
[algoPArt3] = algoPart3(xarray,value_store);
end
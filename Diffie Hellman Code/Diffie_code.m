clc;
clear;close all;%Clear command window
disp('Diffie Hellman Key Exchange');
disp('-----------------------------------------');
check_prime=0;
while check_prime==0        % check both number is prime
p = input('input value of p : ');
g = input('input value of g : ');
%msg = input('The msg : ','s');
prime1 = isprime(p);      % check 'p' is prime or not return '1' or '0'
prime2 = isprime(g);      % check 'g' is prime or not return '1' or '0'
%disp(prime1);
%disp(prime2);
check_prime= prime1 & prime2;
end

random_a=randi(p-1);    % It return random value from 1 to p-1
random_b=randi(p-1);    % It return random value from 1 to p-1
disp(random_a);
disp(random_b);

ga=powermod(g ,random_a ,p);    % It is use to (g power random_a)mod p or (g^random_a)%p
gb=powermod(g ,random_b ,p);    % It is use to (g power random_b)mod p or (g^random_b)%p

result1 = powermod(gb,random_a,p);  % Here Final Key value the result1 == result2
result2 = powermod(ga,random_b,p); 
disp(result1);
disp(result2);
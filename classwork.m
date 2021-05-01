clc;
clear all;
close all;

A = [1 -1 0; 0,-4,2;0 0 -2]; %matrix A
[m,n]= size(A);

for k=1:100
    [Q,R]=qr(A);
    A=R*Q;
    display(k);
    display([A]);

 

end










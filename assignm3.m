clc;
clear all;
close all;

%----------------------------------
%-___Broyden’s method
%----------------------------------
% define the functions 

f=@(x)[x(1)+2*x(2)-2;
(x(1))^2+4*(x(2))^2-4; ]
% define initla guess
x = [1 2 ]'; 
% define B0 as identity matrix I 
k = 20; B = eye(2); F = f(x);
for i = 1:k, % using 15 iterations 
xo = x; Fo = F;
x = x - B*F; F = f(x);%computing newton-like step
yl = x-xo; Yl = F-Fo; dB = yl'*B;
B = B + (yl-B*Yl)*dB/(dB*Yl);% update approx jacobian
disp([i x' ])

disp(B)

disp( F)

end

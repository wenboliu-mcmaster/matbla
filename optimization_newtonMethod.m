clc;
clear all;
close all;

fx = @(x)(x.^2-4*sin(x));
Dfx = @(x)(2*x-4*cos(x));
D2fx = @(x)(2+4*sin(x));

x = -1; %initial guess
tol =  1e-4; %desired tolerance
error = 10*tol;
k = 1; %iteration counter
display([num2str(k,7), ',', num2str(x(k),7), ...
        ', ', num2str(feval(fx,x(k)),7),' , ', num2str(feval(Dfx, x(k)), 7)]);
    
    while error > tol
        x(k+1) = x(k)-feval(Dfx,x(k))/feval(D2fx,x(k));
        error = abs(x(k+1)-x(k));
        k=k+1;
        
        display([num2str(k,7), ',', num2str(x(k),7), ...
        ', ', num2str(feval(fx,x(k)),7),' , ', num2str(feval(Dfx, x(k)), 7)]);
    end
 
       
x = [-3:0.1:3];
FX = feval(fx,x);
plot(x,FX);
grid on
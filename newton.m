clc;
clear all;
close all;
fx=@(x)(x.^2 - 4*sin(x));
Dfx=@(x)(2*x-4*cos(x));
x=[1.93];
tol=0.000001;
error=100*tol;
k=1;
display([num2str(k,7),'     ',num2str(x(k),7),'     ',num2str(feval(fx,x(k)),7)]);
while error>tol
    x(k+1)=x(k)-feval(fx,x(k))/feval(Dfx,x(k));
    error=abs(x(k+1)-x(k));
    k=k+1;
    display([num2str(k,7),'     ',num2str(x(k),7),'     ',num2str(feval(fx,x(k)),7)]); 
end

x=[-2:0.1:3];
y=feval(fx,x);
plot(x,y)
grid on 
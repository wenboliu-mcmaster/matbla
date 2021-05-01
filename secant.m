clc;
clear all;
close all;
fx=@(x)(x.^2 - 4*sin(x));

x=[1,3];
tol=0.0001;
error=100*tol;
k=2;
Dfx=(feval(fx,x(k))-feval(fx,x(k-1)))/(x(k)-x(k-1));
display([num2str(k,7),'     ',num2str(x(k),7),'     ',num2str(feval(fx,x(k)),7)]);
while error>tol
    Dfx=(feval(fx,x(k))-feval(fx,x(k-1)))/(x(k)-x(k-1));
    x(k+1)=x(k)-feval(fx,x(k))/Dfx;
    error=abs(x(k+1)-x(k));
    k=k+1;
    display([num2str(k,7),'     ',num2str(x(k),7),'     ',num2str(feval(fx,x(k)),7)]); 
end

x=[-2:0.1:3];
y=feval(fx,x);
plot(x,y)
grid on 
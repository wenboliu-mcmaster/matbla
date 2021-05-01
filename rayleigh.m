function [X,rho,res] = rayleigh(A,x0,tol)
%
% This is the Rayleigh Quotient Iteration (RQI)
% method. 
%
% Written by Ming Gu for MA221, Fall 2007
%
flg = 1;
x0  = x0/norm(x0);
X   = x0;
rho = x0'*A*x0;
n   = length(A);
res = norm((A-rho(end)*eye(n))*X(:,end));
while flg
  y = (A-rho(end)*eye(n))\X(:,end);
  X = [X, y/norm(y)];
  rho = [rho, X(:,end)'*A*X(:,end)];
  res = [res, norm((A-rho(end)*eye(n))*X(:,end))];
  if (res(end)<tol)
     flg = 0;
  end
end

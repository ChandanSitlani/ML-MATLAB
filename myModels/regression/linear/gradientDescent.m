function [theta] = gradientDescent(X,y,num,alpha)
%GRADIENTDESCENT Summary of this function goes here
%   Detailed explanation goes here
    [m,n]=size(X);
    m=m(1)
    theta=zeros(n,1)
    X
    y
%     alpha
  for i=1:num
    h=X*theta
    err=h-y;
    T=transpose(X);
    grad=(T*err);
    grad=grad.*(alpha/(m))
%     grad=alpha.*grad;
    theta=theta-grad
  end
end


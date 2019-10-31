function [theta] = logisticRegression(X,y,alpha,num)
%LOGISTICREGRESSION Summary of this function goes here
%   Detailed explanation goes here
[m,n]=size(X);
theta=zeros(n);
grad=zeros(n);
for i=1:num :
    h=sigmoid(X,theta);
    err=h-y;
    T=transpose(X);
    grad=T*err;
    grad=grad.*(alpha/m);
    theta=theta-grad;
end
end


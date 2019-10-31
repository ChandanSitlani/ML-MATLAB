function [theta,change] = gradientDescent(X,y,alpha,num)
%GRADIENTDESCENT Summary of this function goes here
%   Detailed explanation goes 
on=ones(length(X(:,1)),1);
X=[on X];
[m,n]=size(X)

theta=zeros(n,1);
for i=1:num
    h=sigmoid(X*theta);
    err=h-y;
    T=transpose(X);
    change=T*err;
    change=change.*(alpha/m);
    theta=theta-change;
end
sigmoid(X*theta)
% hold on;
% xx=0:10;
% yy=xx*theta(2)+theta(1);
% scatter(X(:,1),X(:,2));
% plot(xx,yy);
% hold off;
end


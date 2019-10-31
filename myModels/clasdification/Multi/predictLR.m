function [p] = predictLogReg(X,theta)
%PREDICTLOGREG Summary of this function goes here
%   Detailed explanation goes here
[m,n]=size(X);;
on=ones(m,1);
[mm,nn]=size(theta);
X=[on X];
p=zeros(m,1);
h=sigmoid(X*transpose(theta));
for i=1:m
[m,index]=max(h(i,:));
p(i)=index;
end
end


clear all;
close all;
clc;
% X=[2 3;2 4;4 5;5 4];
% X=[1 0;0 1];

% y=[0;1];
X = [magic(3) ; sin(1:3); cos(1:3)];
[m,n]=size(X);
y = [1; 2; 2; 1; 3];
num_labels = 3;
lambda = 0.1;
on=ones(m,1);
% lambda=0;
X=[on X];
[m,n]=size(X);
theta=zeros(n,1);
initial_theta=zeros(n,1);
options = optimset('GradObj', 'on', 'MaxIter', 50);
[J,grad]=costLogReg(X,y,theta,lambda);
% [theta]=fmincg(@(t)(costLogReg(X,y==1,t,lambda)),initial_theta,options)
theta=trainLR(X,y,initial_theta,0.1,3,30000,0.01)
x=[1 2;2 1;3 4];
[mm,nn]=size(x);
x=[ones(mm,1),x]
p=predictLR(x,theta)
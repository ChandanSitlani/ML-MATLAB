close all;
clear all;
clc;
dataset=fopen('data.txt','r');
formatSpec = '%d';
sizeA=[2,Inf];
data=fscanf(dataset,formatSpec,sizeA);

data=transpose(data);
[m,n]=size(data);
o=ones(m,1);
X=[o data(:,1:n-1)]
% X=transpose(X);
y=data(:,n);
% y=transpose(y);
theta=gradientDescent(X,y,10000,0.001)
h=X*theta;
data
X
y
hold on;
x=X(:,2:n)
scatter(x,y);
plot(X,h);
hold off;

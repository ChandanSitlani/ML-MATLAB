close all;
clear all;
clc;
dataset=fopen('data.txt','r');
formatSpec = '%d';
sizeA=[2,Inf];
data=fscanf(dataset,formatSpec,sizeA);

data=transpose(data);
[m,n]=size(data);
X=data(:,1:n-1)
% X=transpose(X);
y=data(:,n);
% y=transpose(y);
theta=gradientDescent(X,y,10000,0.001);
h=X*theta;
data
X
y
hold on;
scatter(X,y);
plot(X,h);
hold off;

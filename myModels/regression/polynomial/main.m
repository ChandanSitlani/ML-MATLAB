close all;
clear all;
clc;
dataset=fopen('data.txt','r');
formatSpec = '%f';
sizeA=[2,Inf];
data=fscanf(dataset,formatSpec,sizeA);

data=transpose(data);
[m,n]=size(data);
o=ones(m,1);
X=data(:,1:n-1)
h=zeros(m,1);
% X=transpose(X);
y=data(:,n);
% y=transpose(y);
theta=gradientDescent(X,y,100,0.0000125,3)
for i=1:m
    for j=1:4
        h(i)=h(i)+theta(j)*X(i)^(j-1);
    end
end
% data
% X
% y

hold on;
x=X(:)
scatter(x,y);
plot(x,h);
hold off;

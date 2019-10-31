function [all_theta] = trainLR(X,y,theta,lambda,num_classes,num,alpha)
%TRAINLR Summary of this function goes here
%   Detailed explanation goes here
[m,n]=size(X);
all_theta=zeros(num_classes,n);
for i=1:1:num_classes
    for j=1:num
        [J,grad]=costLogReg(X,y==i,theta,lambda);
        theta=theta-(grad.*alpha);
    end
    all_theta(i,:)=transpose(theta);
end

end



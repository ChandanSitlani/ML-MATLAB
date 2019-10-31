function [theta] = gradientDescent(X,y,num,alpha,no)
%GRADIENTDESCENT Summary of this function goes here
%   Detailed explanation goes here
    [m,n]=size(X);
    m=m(1)
    theta=zeros(no+1,1);
%     X
%     y
%     alpha

grad=zeros(no+1,1);
h=zeros(m,1);
for n=1:num
    
    for i=1:m
        for j=1:no+1
            h(i)=h(i)+theta(j)*(X(i)^(j-1));
        end
    end
    h;
    err=h-y;



     for j=1:no+1
        for i=1:m
            grad(j)=grad(j)+err(i)*X(i)^(j-1);
        end
     end




        grad=grad.*(alpha/(m));
    %     grad=alpha.*grad;
        theta=theta-grad;
 
end
end


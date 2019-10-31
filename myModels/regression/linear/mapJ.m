function [J] = mapJ(X,y)
%MAPJ Summary of this function goes here
%   Detailed explanation goes here
theta0=[0:1000];
theta1=[0:1000];
J=zeros(1000,1000);
for i=1:1000 
    for j=1:1000 
        J(i,j)=gDcost(X,y,[theta0(i);theta1(j)]);
    end
end

end


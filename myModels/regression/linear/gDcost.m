function [J] = gDcost(X,y,theta)
%GDCOST Summary of this function goes here
%   Detailed explanation goes here
m=length(X);
h=X*theta;
err=h-y;
err=err.^2;
J=sum(err);
J=J/(2*m);
end


function [J,grad] = costLogReg(X,y,theta,lambda)
%COSTLOGREG Summary of this function goes here
%   Detailed explanation goes here

[m,n]=size(X);

h=sigmoid(X*theta);
f=transpose((-1*y))*log(h);
s=transpose(1-y)*log(1-h);
J=(f-s)*(1/(m));
err=h-y;
T=transpose(X);
change=T*err;
change=change.*(1/m);
gradd=theta.*(lambda/m);
gradd(1)=0;
change=change+gradd;
grad=change;
ts=theta.^2;
ts=ts.*(lambda/(2*m));
ts(1)=0;
J=J+sum(ts);
end


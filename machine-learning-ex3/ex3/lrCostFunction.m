
function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
h=sigmoid(X*theta);
f=(-1*transpose(y))*log(h);
s=transpose((1-y))*log(1-h);
ts=theta.^2;
ts(1)=0;
ts=ts.*(lambda/(2*m));

err=f-s;
J=sum(err);
J=J.*(1/m);
d=h-y;
T=transpose(X);
change=T*d;
gradt=theta.*(lambda/m);
gradt(1)=0;

 change=change.*(1/m);
 change=change+gradt;
grad=change;
J=J+sum(ts);









% =============================================================

grad = grad(:);

end

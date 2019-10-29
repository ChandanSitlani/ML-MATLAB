function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
h=sigmoid(X*theta);
err=h-y;
L=log(h);
LL=log(1.-h);
J=(transpose(-1.*y)*L-transpose((1-y))*LL)/m;
ts=theta.^2;
sumt=sum(ts)-theta(1)^2;

J=J+lambda*sumt/(2*m);
ne=(lambda/m).*theta;
ne(1)=0;
grad=transpose(X)*err./m+ne;



% =============================================================

end

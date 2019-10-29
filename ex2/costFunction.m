function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

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
grad=transpose(X)*err./m;

%
% Note: grad should have the same dimensions as theta
%








% =============================================================

end
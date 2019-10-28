function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
h=X*theta;
err=(h-y).^2;
err=sum(err);
J=err/(2*m);



% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end

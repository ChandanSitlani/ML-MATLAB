function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
theta=(inv(transpose(X)*X))*transpose(X)*y;
% ---------------------- Sample Solution ----------------------




% -------------------------------------------------------------


% ============================================================

end

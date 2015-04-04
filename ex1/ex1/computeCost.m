function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

h = X * theta;  % hypothesis vector for all examples for the given theta.

squareOfErrors = (h - y).^2;     % square of errors for all hypothesis.

J = (1 / (2 * m)) * sum(squareOfErrors);  % 1/2m * sum of all square of errors.

% BRACKETS KA DHYAN RAKHO! :)

% =========================================================================
end

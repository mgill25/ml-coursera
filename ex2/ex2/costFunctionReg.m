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
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

hX = sigmoid(X * theta);  % our hypothesis is a sigmoid function.

costTerm = sum(-y' * log(hX) - (1 - y') * log(1 - hX)) / m;

% lambdaCost = ((lambda / 2 * m) * sum(theta(2:end) .^ 2));
% something weird going on with parens here. The above line doesn't work.
% also, remember that we don't consider theta(0) here!
lambdaCost = ((lambda/(2*m)) * sum(theta(2:end) .^ 2));

J = costTerm + lambdaCost;
% fprintf('J is: %s\n', J);

result = (X' * (hX - y) / m);

grad(1) = result(1);
grad(2:end) = result(2:end) + (theta(2:end) * lambda / m);
% =============================================================

end

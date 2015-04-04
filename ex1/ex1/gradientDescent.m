function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.    
    h = X * theta;
    
    % Calculate first theta term
    theta_first = theta(1, 1) - (alpha / m) * sum(h - y);
    
    % Calculate second theta term
    term = (h - y).*X(:,2);
    theta_second = theta(2, 1) - (alpha / m) * sum(term);
    
    % Combine to get a new theta!    
    theta(1,1) = theta_first
    theta(2,1) = theta_second
    
    % ============================================================
    
    %%
    % Alternatively, we can also write the solution using this matrix
    % multiplication method:
    %gradJ = X'* (X * theta - y) / m;
    %theta = theta - alpha * gradJ;
    %%
    
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);


end

% debugging

%figure
%plot(J_history)
%xlabel('Iterations')
%ylabel('J(Theta)')
%figure

end

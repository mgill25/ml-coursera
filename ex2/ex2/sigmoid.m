function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
    function rv = sigm(p)
        if p > 0 || p < 0
            rv = 1 / (1 + exp(-p));
        else
            rv = 0.5;
        end
    end

g = arrayfun(@sigm, z); 
% arrayfun applies the function sigm to all items
% in the matrix z. A single argument is also taken as matrix! Fuck me! :)

% =============================================================
end

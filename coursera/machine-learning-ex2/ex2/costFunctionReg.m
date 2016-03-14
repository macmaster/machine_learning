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


% cost sum terms
hyp = sigmoid(X * theta);
term1 = (-y' * log(hyp));
term2 = (-(1 - y)' * log(1 - hyp));
jsum = (term1 + term2) / m;

% regulariaztion term
theta(1) = 0;
reg = lambda * (theta' * theta);
rsum = reg / (2 * m);

% cost function
J = jsum + rsum;


% gradient terms
diff = hyp - y;
gsum = (diff' * X) / m;

% gradient with regularization
grad = gsum' + (lambda / m) * theta;


% =============================================================

end

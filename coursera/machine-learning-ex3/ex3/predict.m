function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% Prepare input layer
X = [ones(m, 1), X]';


% Hidden Layer 2 activation
A2 = (Theta1 * X)';
A2 = sigmoid(A2);

% bias hidden layer 2
n = size(A2, 1);
A2 = [ones(n, 1), A2]';

% Output Layer 3 activation
A3 = (Theta2 * A2);
A3 = sigmoid(A3);

% Predict from Output Layer 
[mh, max_index] = max(A3);
p = (max_index)';


% =========================================================================


end

function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% split admission data into yes and no
positive = find(y==1);
negative = find(y==0);

posX = X(positive, [1, 2]);
negX = X(negative, [1, 2]);

% plot Admission data
plot(posX(:,1), posX(:,2), 'r+', 'LineWidth', 2);
plot(negX(:,1), negX(:,2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 6);

disp("hello world!");

% =========================================================================



hold off;

end

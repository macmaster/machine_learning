% *********************advopt.m**************************************
% 
% Author: Ronny Macmaster
% Date: 3/12/15
% 
% Practice using advanced gradient optimization libraries
% uses the fminunc ( function minimize unconstrained ) call.
% Minimizes the cost function defined below
% *******************************************************************

function [jval, gradient] = costfunction(theta)

	% value of cost function
	jval = (theta(1) - 2)*(theta(1) + 1)*(theta(2) - 3)*(theta(2) + 6);

	% value of the gradient
	gradient = zeros(2, 1);
	gradient(1) = (theta(2) - 3)*(theta(2) + 6)*(2*theta(1) - 1);
	gradient(2) = (theta(1) + 2)*(theta(1) + 1)*(2*theta(2) + 3);

end

% initialize options
options = optimset('GradObj', 'on', 'MaxIter', '200');
theta = zeros(2, 1);

% Call the optimization routine
[optimalTheta, costVal, exitFlag] = fminunc(@costfunction, theta, options);

% display results
disp(optimalTheta);
disp(costVal);
disp(exitFlag);




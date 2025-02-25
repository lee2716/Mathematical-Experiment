% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

function [x0, y0] = fun
    % Task: Find the maximum value of a function within the interval [0,9]
    % The function to be maximized: f(x) = exp(x) * x * sin(x)
    % Method: Use fminbnd to find the minimum of the negative function
    % Output: x0 - the x-coordinate of the maximum point
    %         y0 - the maximum function value

    % Define the function (negated for minimization)
    y = @(x) -exp(x) * x * sin(x);

    % Find the minimum of the negative function (which corresponds to the maximum of the original function)
    [x0, y0] = fminbnd(y, 0, 9);
    
    % Convert back to the maximum value of the original function
    y0 = -y0;
end

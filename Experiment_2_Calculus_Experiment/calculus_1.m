% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

% Function to compute the second derivative of y = a*exp(x)/sqrt(a+x^2)
function r = myfun
    % Define symbolic variables
    syms a x
    
    % Define the function y
    y = a*exp(x)/sqrt(a+x^2);
    
    % Compute the second derivative of y with respect to x
    f2 = diff(y, x, 2);
    
    % Calculate the second derivative at a = 2, x = 6
    r1 = subs(f2, [a, x], [2, 6]);
    
    % Calculate the second derivative at a = 3, x = 6
    r2 = subs(f2, [a, x], [3, 6]);
    
    % Alternative method to substitute values (using cell arrays for variables)
    r1_b = subs(f2, {'a', 'x'}, {2, 6});
    r2_b = subs(f2, {'a', 'x'}, {3, 6});
    
    % Store the result in r 
    r = r1;
end

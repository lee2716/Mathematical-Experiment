% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

% Task: Solve an equation using fzero to find the root of the function.
% The goal is to define a function and use fzero to solve it, returning the root in variable 'xp'.

function xp = myfun1
    % Step 1: Define the function using anonymous function handle (@).
    % The function is f(x) = 2*x^3 - 3*x^2 + 4*x - 5.
    f = @(x) 2*x^3 - 3*x^2 + 4*x - 5;

    % Step 2: Define the search interval for fzero to look for the root.
    % We use a wide range, [-10000, 10000], to ensure that fzero can find the root.
    x = [-10000, 10000];

    % Step 3: Use fzero to find the root of the function within the given interval.
    % fzero takes in the function and the initial interval and returns the root.
    xp = fzero(f, x);

    % Output the value of the root
    disp('The root found is:');
    disp(xp); % Display the root of the equation
end

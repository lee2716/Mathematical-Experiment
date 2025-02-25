% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
% ----------------------------------------------------------
% Algorithm Design: Loop Statements and Exhaustive Search
% 
% Problem Statement:
% Find all positive integers (i, j) within the range [1,1000] 
% that satisfy the equation:
% 
%       i^2 - 100*j = i
%
% Write a function that returns two row vectors:
%       a = [a(1), a(2), ..., a(n)] (sorted in ascending order)
%       b = [b(1), b(2), ..., b(n)]
% where each pair (a(i), b(i)) is a valid solution.
% ----------------------------------------------------------

close all;  % Close all figure windows
clear all;  % Clear all variables from the workspace

a(1) = 0;   % Initialize vector 'a' to store valid values of 'i'
b(2) = 0;   % Initialize vector 'b' to store corresponding values of 'j'
cnt = 1;    % Counter to track the number of solutions

% Iterate through all possible values of i and j in the range [1,1000]
for i = 1:1000
    for j = 1:1000
        % Check if the given condition holds: i^2 - 100*j = i
        if ((i*i - 100*j) == i)
            % Store valid pairs (i, j) in vectors a and b
            a(cnt) = i;
            b(cnt) = j;
            cnt = cnt + 1; % Increment counter
        end
    end
end

% Display the results
a  % Output the values of 'a'
b  % Output the corresponding values of 'b'

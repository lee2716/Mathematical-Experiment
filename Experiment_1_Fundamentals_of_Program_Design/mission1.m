% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function a = myfun1
% This function generates the first 40 terms of a sequence
% and stores the result in a row vector 'a'.
%
% Problem Statement:
% Define a sequence where:
% a(1) = 0
% a(2) = 1
% a(n) = a(n-1) + 2 * a(n-2)  for n ≥ 3
% Write a program using a loop to compute the first 40 terms 
% and store them in a row vector x.

a = zeros(1,40); % Initialize a row vector with 40 elements, all set to zero
a(1,1) = 0; % Set the first term of the sequence
a(1,2) = 1; % Set the second term of the sequence

for i = 3:40
    % Compute the i-th term based on the recurrence relation:
    % a(n) = a(n-1) + 2 * a(n-2)
    a(1,i) = a(1,i-1) + 2 * a(1,i-2);
end

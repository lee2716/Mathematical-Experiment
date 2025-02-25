% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

clear all
% ----------------------------------------------------------
% Mission 4: Cutting Strategy for a 1200 cm Bar
%
% Problem Statement:
% Given a bar of length 1200 cm, we need to find all possible ways to cut 
% it into two types of finished products:
%   - 64 cm pieces
%   - 85 cm pieces
%
% Constraints:
% - A single bar can produce a maximum of 18 pieces of 64 cm or 
%   a maximum of 14 pieces of 85 cm.
% - We use an exhaustive search method to determine all valid cutting strategies.
% - The program should provide detailed cutting information, 
%   including the number of each type of product and the leftover material.
% ----------------------------------------------------------

% Initialize arrays to store results
a = zeros(1, 19); % Number of 85 cm pieces
b = zeros(1, 19); % Number of 64 cm pieces
c = zeros(1, 19); % Leftover material after cutting

% Loop through possible numbers of 64 cm pieces (0 to 18)
for j = 1:19  
    % Compute the maximum number of 85 cm pieces that fit after taking (j-1) 64 cm pieces
    a(j) = floor((1200 - 64 * (j-1)) / 85); % Calculate max possible 85 cm pieces
    b(j) = j - 1;  % Store the number of 64 cm pieces
    c(j) = 1200 - (a(j) * 85) - (b(j) * 64); % Compute the leftover material
end

% Display results
disp('Number of 85 cm pieces:'); 
disp(a); % Display the number of 85 cm pieces

disp('Number of 64 cm pieces:'); 
disp(b); % Display the number of 64 cm pieces

disp('Leftover material (cm):'); 
disp(c); % Display leftover material after cutting

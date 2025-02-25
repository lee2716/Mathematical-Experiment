% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

function [x, fval, flag] = Optimization_4
% Problem Description:
% A factory has three types of raw materials: C1, C2, and C3 with reserves of
% 150 kg, 160 kg, and 180 kg, respectively. The factory produces two types of 
% products: A and B. The production requirements and profits are as follows:
% 
% - For each 1 kg of product A, it requires 3 kg of C1, 6 kg of C2, and 2 kg of C3.
% - For each 1 kg of product B, it requires 5 kg of C1, 5 kg of C2, and 6 kg of C3.
% 
% The profit for producing 1 kg of product A is 17 yuan, and the profit for 
% producing 1 kg of product B is 15 yuan. The objective is to create a production 
% plan that maximizes profit while respecting the available raw material limits.
%
% This problem is a linear programming problem that can be formulated as:
% Maximize:     17*x1 + 15*x2  (Profit function)
% Subject to:
%   3*x1 + 5*x2 <= 150    (Raw material C1 constraint)
%   6*x1 + 5*x2 <= 160    (Raw material C2 constraint)
%   2*x1 + 6*x2 <= 180    (Raw material C3 constraint)
%   x1 >= 0, x2 >= 0       (Non-negative production)

% Step 1: Define the objective function for maximization (convert to minimization by negating)
f = -[17 15];   % Coefficients of the objective function (maximize profit)

% Step 2: Define the inequality constraints (Ax <= b)
A = [3 5; 6 5; 2 6];   % Coefficients of the inequality constraints
b = [150; 160; 180];   % Right-hand side values for inequality constraints

% Step 3: No equality constraints, so set Aeq and beq to empty
Aeq = []; 
beq = [];

% Step 4: Set lower bounds (production quantities cannot be negative)
LB = [0; 0];   % Lower bounds for x1 and x2 (non-negative)

% Step 5: Set upper bounds (no upper bounds, so use infinity)
UB = [inf; inf];   % Upper bounds for x1 and x2

% Step 6: Use linprog to solve the linear programming problem
[x, fval, flag] = linprog(f, A, b, Aeq, beq, LB, UB);

% Step 7: Since production quantities must be integers, truncate the results using floor function
x = floor(x);   % Truncate the solution to the nearest integer values

% Display the results
disp('Optimal production plan (Product A, Product B):');
disp(x);   % Output the optimal quantities for products A and B
disp('Maximum profit:');
disp(-fval);  % Output the maximum profit (negate the result since it was minimized)
end

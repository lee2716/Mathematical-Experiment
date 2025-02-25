% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

function linear_programming_example
% Problem Description:
% Solve the following linear programming model:
%
% Maximize:     c = [-2.5 -5 -10]
% Subject to:
%   -2.5x1 - 5x2 - 10x3 <= -50
%   -2x1 - 2x2 + x3 <= 0
%   x1 + x2 + x3 = 100
%   x1 >= 10
%   x2 >= 0
%   x3 >= 20
%   x1 <= 30
%   x2 <= 90
%   x3 <= 80
%

% Step 1: Define the objective function, inequality constraints, equality constraints, and bounds
c = [-2.5 -5 -10];   % Coefficients of the objective function (for minimization)
A = [-2.5 -5 -10; -2 -2 1];   % Coefficients of the inequality constraints (Ax <= b)
b = [-50 0];  % Right-hand side values for inequality constraints (b)
Aeq = [1 1 1];  % Coefficients of the equality constraints (Aeq * x = Beq)
Beq = [100];  % Right-hand side value for equality constraint
lb = [10 0 20];  % Lower bounds for x1, x2, x3
ub = [30 90 80];  % Upper bounds for x1, x2, x3

% Step 2: Since linprog minimizes the objective function, we take the negative of the objective to maximize it
[x, val, flag] = linprog(c, A, b, Aeq, Beq, lb, ub);

% Step 3: Since linprog minimizes the function, multiply the result by -1 to get the maximum value
val = -val;

% Display the optimal solution and the maximum value
disp('Optimal solution (x1, x2, x3):');
disp(x);
disp('Maximum value of the objective function:');
disp(val);
end


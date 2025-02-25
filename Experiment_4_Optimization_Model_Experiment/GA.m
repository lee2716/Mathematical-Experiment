% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

function GA
% Problem Description:
% The goal of this problem is to use two optimization methods to find the optimal 
% solution to a given objective function subject to nonlinear constraints.
%
% The objective function to be minimized is:
% f(x) = 2(x1 - 1)^2 + 3(x2 - 1)^2 + 0.2*x1*x2 + (2*x2 - 2)^2
%
% The constraints are as follows:
% 1. Nonlinear equality constraint: x3 must be an integer, i.e., mod(x3, 1) = 0
% 2. Nonlinear inequality constraints:
%    - -2*x1^2 + (-2)^2 - x3^2 + 5
%    - x1^2 + x2^2 * x3^2 - 200
%
% The decision variables are: x1, x2, and x3.
% The optimization is performed using both Genetic Algorithm (GA) and fmincon, and 
% the results are compared.

% Step 1: Define initial guess for GA optimization
x0 = [0; 0; 2];  % Initial values for the optimization variables

% Step 2: Define the inequality constraints matrix A and the right-hand side vector b
A = [3 2 6; 4 5 2; 2 9 7];  % Coefficients of the inequality constraints
b = [50; 40; 100];  % Right-hand side values for the inequality constraints

% Step 3: Set empty matrices for equality constraints (none in this case)
Aeq = []; 
beq = [];

% Step 4: Define lower and upper bounds for the decision variables
LB = [0; 0; 0];  % Lower bounds for x1, x2, x3 (non-negative)
UB = [15; 9; 25];  % Upper bounds for x1, x2, x3

% Step 5: Use the genetic algorithm (GA) to solve the problem
[x, fval, flag] = ga(@fun1, 3, A, b, Aeq, beq, LB, UB, @consfun);

% Display the results of the genetic algorithm optimization
disp('Optimal solution (x1, x2, x3) using GA:');
disp(x);
disp('Objective function value using GA:');
disp(fval);

end

% Step 6: Define the objective function for GA optimization in fun1.m
function f = fun1(x)
% This is the objective function to be minimized.
% f(x) = 2(x1 - 1)^2 + 3(x2 - 1)^2 + 0.2*x1*x2 + (2*x2 - 2)^2
f = 2*(x(1) - 1)^2 + 3*(x(2) - 1)^2 + 0.2*x(1)*x(2) + (2*x(2) - 2)^2;
end

% Step 7: Define the nonlinear constraints in consfun.m
function [t, ceq] = consfun(x)
% Nonlinear equality constraint: x3 must be an integer
ceq = [mod(x(3), 1)];  % The modulus constraint ensures x3 is an integer

% Nonlinear inequality constraints
t = [-2*x(1)^2 + (-2)^2 - x(3)^2 + 5; 
     x(1)^2 + x(2)^2 * x(3)^2 - 200];
end

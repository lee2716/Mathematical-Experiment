% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************


function testmain_function
% Problem Description:
% This problem aims to find the optimal solution for a given optimization 
% model using the Monte Carlo method. The objective function and constraints 
% are as follows:
%
% Objective function:
% f(x) = 2*(x1 - 1)^2 + 3*(x2 - 4)^2 - (2*x1 - 5)^2 + x1*x2
%
% Constraints:
% 1. 3*x1 + 2*x2 + 6*x3 - 20 <= 0
% 2. 4*x1 + 5*x2 + 2*x3 - 21 <= 0
%
% The goal is to find the minimum value of the objective function while satisfying 
% the constraints. This can be done using the Monte Carlo method by randomly 
% generating points within the feasible region and selecting the one that minimizes 
% the objective function.

% Step 1: Generate a random starting point
betterx0 = rndX;  % Generate a random point as the initial guess

% Step 2: Evaluate the objective function for the starting point
minval = funobj(betterx0);  % Calculate the objective function value at the initial point

% Step 3: Set the number of iterations for the Monte Carlo method
N = 1e4;  % Number of random points to sample

% Step 4: Monte Carlo loop to search for the optimal solution
for i = 1:N
    x = rndX;  % Generate a random point
    val = funobj(x);  % Evaluate the objective function at the random point
    
    c = cons(x);  % Evaluate the constraints at the random point
    if all(c <= 0)  % Check if the point satisfies all constraints
        if val < minval  % If this point gives a better objective value, update the solution
            minval = val;  % Update the minimum value
            betterx0 = x;  % Save the new optimal solution
        end
    end
end

% Display the results: the minimum value and the corresponding optimal solution
disp('Minimum value of the objective function:');
disp(minval);
disp('Optimal solution (x1, x2, x3):');
disp(betterx0);

end

% Random point generation function (rndX.m)
function X = rndX
% This function generates a random point within the given bounds:
% 0 <= x1 <= 15
% 0 <= x2 <= 9
% x3 is an integer, 0 <= x3 <= 25
X = [15 * rand;  % Random value for x1 within [0, 15]
     9 * rand;   % Random value for x2 within [0, 9]
     round(25 * rand)];  % Random integer value for x3 within [0, 25]
end

% Objective function definition (funobj.m)
function r = funobj(x)
% This is the objective function to be minimized:
% f(x) = 2*(x1 - 1)^2 + 3*(x2 - 4)^2 - (2*x1 - 5)^2 + x1*x2
r = 2 * (x(1) - 1)^2 + 3 * (x(2) - 4)^2 - (2 * x(1) - 5)^2 + x(1) * x(2);
end

% Constraint function definition (cons.m)
function [c, ceq] = cons(x)
% This function evaluates the constraints:
% 1. 3*x1 + 2*x2 + 6*x3 - 20 <= 0
% 2. 4*x1 + 5*x2 + 2*x3 - 21 <= 0

ceq = [];  % No equality constraints

% Calculate the inequality constraints:
phai1 = 3 * x(1) + 2 * x(2) + 6 * x(3) - 20;  % First inequality constraint
phai2 = 4 * x(1) + 5 * x(2) + 2 * x(3) - 21;  % Second inequality constraint

c = [phai1;  % First constraint
     phai2]; % Second constraint
end

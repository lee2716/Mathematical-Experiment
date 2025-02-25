% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

function X = rndX 
    % Task: Randomly generate a point within the given constraints
    % Constraints: 
    % 0 <= x1 <= 15
    % 0 <= x2 <= 9
    % x3 is an integer with 0 <= x3 < 25

    X = [15 * rand;  % Generate x1 in [0, 15]
         9 * rand;   % Generate x2 in [0, 9]
         round(25 * rand)]; % Generate integer x3 in [0, 24]
end

function r = funobj(x)
    % Task: Define the objective function to be minimized
    % The function: f(x) = 2*(x1-1)^2 + 3*(x2-4)^2 - (2*x1 - 5)^2 + x1*x2

    r = 2 * (x(1) - 1)^2 + 3 * (x(2) - 4)^2 - (2 * x(1) - 5)^2 + x(1) * x(2);
end

function [c, ceq] = cons(x)
    % Task: Define the inequality constraints for optimization
    % Constraints:
    % c1(x) = 3*x1 + 2*x2 + 6*x3 - 20 <= 0
    % c2(x) = 4*x1 + 5*x2 + 2*x3 - 21 <= 0

    ceq = []; % No equality constraints
    phai1 = 3 * x(1) + 2 * x(2) + 6 * x(3) - 20;
    phai2 = 4 * x(1) + 5 * x(2) + 2 * x(3) - 21;
    c = [phai1; phai2]; % Store inequality constraints
end

function testmain_function
    % Task: Solve the optimization problem using random sampling
    % Method: Generate random feasible points and search for the minimum function value
    
    betterx0 = rndX; % Generate initial random point
    N = 1e4; % Number of iterations
    minval = funobj(betterx0); % Compute initial function value

    for i = 1:N
        x = rndX; % Generate a new random point
        val = funobj(x); % Compute function value
        c = cons(x); % Check constraints
        
        if all(c <= 0) % Ensure feasibility
            if val < minval % Update if a better solution is found
                minval = val; % Store new minimum value
                betterx0 = x; % Store corresponding point
            end
        end
    end

    % Output results
    minval, betterx0 
end

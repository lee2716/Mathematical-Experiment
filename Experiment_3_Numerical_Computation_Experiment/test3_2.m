% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

% Task: Solve a differential equation using ode23 and Euler's method
% This task involves solving a differential equation using both the `ode23` method 
% (MATLAB's built-in function) and Euler's method (a custom implementation).
% The solution of the differential equation will be plotted for comparison.

function work3
    % Define the time range for the solution, t from 0 to 120.
    t = 0 : 120;
    
    % Step 1: Solve the differential equation using ode23 (MATLAB's built-in function)
    % This will compute the solution of the differential equation dfun using ode23.
    [T1, Y1] = ode23(@fun1, t, 10);  % Initial condition y0 = 10
    
    % Step 2 (Optional): Solve the differential equation using Euler's method
    % The Euler method is commented out, but it's also available for comparison.
    % [T2, Y2] = myeuler(@fun1, t, 10);
    
    % Step 3 (Optional): Plot the solutions from both methods
    % This will generate a plot comparing the solutions of ode23 (in red dots) and 
    % Euler's method (in circles).
    % plot(T1, Y1, 'r.', T2, Y2, 'o');
    
    % The next function `fun1` defines the differential equation.
    % It takes in the current time `t` and the current solution `y` and returns the 
    % rate of change of `y` according to the given equation.
    
end

% Define the differential equation fun1(t, y) = 0.02*(1 - 0.001*y)*y
function dfun = fun1(t, y)
    % Define the differential equation's rate of change.
    % dfun = 0.02*(1 - 0.001*y)*y;
    dfun = 0.02 * (1 - 0.001 * y) * y;
end

% Optional Euler method implementation 
% function [t, Y] = myeuler(dfun, t, y0)
%     % If t is a row vector, transpose it to a column vector for uniformity
%     if size(t, 1) == 1
%         T = t';  % Ensure tspan is a column vector
%     else
%         T = t;
%     end
%     
%     % Initialize the solution array Y with zeros
%     Y = zeros(size(t));
%     Y(1) = y0;  % Set the initial condition
%     
%     % Use Euler's method to solve the differential equation
%     for i = 2:length(Y)
%         Y(i) = Y(i-1) + 0.02 * (1 - 0.001 * Y(i-1)) * Y(i-1);  % Euler's step
%     end
% end

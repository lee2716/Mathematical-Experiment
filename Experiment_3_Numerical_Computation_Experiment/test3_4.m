% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

function test3_4
% Problem Description:
% Function to solve a second-order differential equation system numerically.
% The system of equations is as follows:
% x_1' = x_2
% x_2' = 20*(1 - x_1^2)*x_2 - 0.5*x_1
% Using the ode23 function to solve the system for the time range [0, 100]
% with step size 0.1. The solution will be plotted for both x_1 and x_2.

% Define the time range t from 0 to 100 with a step size of 0.1
t = 0:0.1:100;

% Use the ode23 function to solve the differential equation fun1(t, x)
% with initial conditions x(0) = [2; 0]
[t, x] = ode23(@fun1, t, [2; 0]);

% Plot the curves of x_1 and x_2, x_1 as red dots and x_2 as a dashed line
plot(t, x(:,1), 'r.', t, x(:,2), '--')

% Add axis labels
xlabel('t');
ylabel('x_1 and x_2');

% Add a legend
legend('x_1', 'x_2');

% Define the differential equation function fun1, with inputs t and x
function dfun = fun1(t, x)
    % x(1) corresponds to x_1, x(2) corresponds to x_2
    % Define the system of differential equations: x_1' = x_2, x_2' = 20(1 - x_1^2)x_2 - 0.5x_1
    dfun = [x(2);  % x_1' = x_2
            20*(1 - x(1)^2)*x(2) - 0.5*x(1)];  % x_2' = 20(1 - x_1^2)x_2 - 0.5x_1
end

end

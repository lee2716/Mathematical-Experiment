% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

% Task: Compute the definite integral of the function f(x) = exp(2*cos(x)) * cos(x)
% Using both symbolic and numerical methods.

% Step 1: Define the symbolic variable
syms x

% Step 2: Define the function expression
f = exp(2*cos(x)) * cos(x); % Symbolic expression of the function

% Step 3: Compute the definite integral using symbolic toolbox
% Using int function for symbolic integration between limits 0 and pi
true_sol = vpa(int(f, x, 0, pi)); % Compute the symbolic integral result

% Step 4: Compute the definite integral using numerical integration
fh = @(x) exp(2*cos(x)) .* cos(x); % Define the function as an anonymous function for numerical integration
r = integral(fh, 0, pi); % Perform numerical integration using the integral function

% Display the results:
disp('Symbolic Integral Result:');
disp(true_sol); % Display the symbolic result

disp('Numerical Integral Result:');
disp(r); % Display the numerical result

% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

function [p, v] = myfun()
% Fit a 2nd-degree polynomial to given data and evaluate it.
% 
% Problem Statement:
% The performance index y of a product is related to the content x of a certain material.
% Given 16 sets of experimental data, fit a quadratic polynomial using polyfit.
% Then, evaluate the polynomial at x values ranging from 25 to 60 with a step size of 0.4.
%
% Returns:
%   p - Quadratic polynomial coefficients (highest to lowest degree)
%   v - Evaluated polynomial values at x = 25:0.4:60

% Input data points
x = [20.05 22.09 24.13 26.24 28.11 30.29 32.09 34.23 ...
     36.23 38.2 40.27 42.27 44.07 46.05 48.47 50.58];
y = [26.5 10.46 2.75 3.53 11.67 29.98 52.26 87.19 ...
     128.11 176.24 235.17 300.25 365.66 445.1 552.84 631];

% Fit a 2nd-degree polynomial
p = polyfit(x, y, 2);

% Define x range for evaluation
x0 = 25 : 0.4 : 60;

% Evaluate polynomial
v = polyval(p, x0);

end

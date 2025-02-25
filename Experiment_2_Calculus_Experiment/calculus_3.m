% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

% Task: Finding Inflection Points of a Discrete Function
% Given a function's values at discrete points, we need to estimate its second derivative (dy2)
% and find potential inflection points based on the change in sign of the second derivative.

% Step 1: Define the data (x values and corresponding y values)
d = [0.0 2.4051;
     0.2 2.8759;
     0.4 3.4072;
     0.6 3.9690;
     0.8 4.5147;
     1.0 4.9844;
     1.2 5.3149;
     1.4 5.4541;
     1.6 5.3752;
     1.8 5.0849;
     2.0 4.6224;
     2.2 4.0482;
     2.4 3.4297;
     2.6 2.8260;
     2.8 2.2793;
     3.0 1.8125;
     3.2 1.4322;
     3.4 1.1336;
     3.6 0.9059;
     3.8 0.7364;
     4.0 0.6131;
     4.2 0.5258;
     4.4 0.4668;
     4.6 0.4302;
     4.8 0.4125;
     5.0 0.4114;
     5.2 0.4263;
     5.4 0.4575;
     5.6 0.5064;
     5.8 0.5748;
     6.0 0.6648;
     6.2 0.7776;
     6.4 0.9129;
     6.6 1.0671;
     6.8 1.2324;
     7.0 1.3961;
     7.2 1.5416;
     7.4 1.6501;
     7.6 1.7052;
     7.8 1.6966;
     8.0 1.6234;
     8.2 1.4945;
     8.4 1.3263;
     8.6 1.1387;
     8.8 0.9503;
     9.0 0.7756;
     9.2 0.6233;
     9.4 0.4971;
     9.6 0.3965;
     9.8 0.3188;
     10.0 0.2605;
     10.2 0.2178;
     10.4 0.1875;
     10.6 0.1670;
     10.8 0.1546;
     11.0 0.1490;
     11.2 0.1496;
     11.4 0.1565;
     11.6 0.1701;
     11.8 0.1913];

% Extract x and y values
x = d(:,1);
y = d(:,2);

% Plot the function to visualize the data points
figure(1)
plot(x, y)
hold on

% Step 2: Calculate the step size (h) between consecutive x values
h = x(2) - x(1);

% Step 3: Estimate the second derivative (dy2) using the central difference method
for i = 2 : 59
    dy2(i) = (y(i+1) + y(i-1) - 2 * y(i)) / (h^2); % Central difference formula
end 

% Step 4: Search for inflection points (where dy2 changes sign)
j = 0; % Initialize counter for inflection points
for i = 3 : 59
    if dy2(i-1) * dy2(i) < 0 % Check if the second derivative changes sign
        j = j + 1; % Increment counter
        gx(j) = x(i); % Store x-coordinate of inflection point
        gy(j) = y(i); % Store y-coordinate of inflection point
    end
end

% Step 5: Plot the second derivative to visualize changes
figure(2)
plot(dy2) % Plot the estimated second derivative

% Task Summary:
% - The second derivative is estimated using the central difference method.
% - Inflection points are identified where the second derivative changes sign.
% - The positions of the potential inflection points are stored and plotted.

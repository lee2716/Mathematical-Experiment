% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

% ----------------------------------------------------------
% A1.4 Feature Calculation of a Circular Ring
%
% Problem Statement:
% This program reads data from separate text files ("data_ring1.txt" and "data_ring2.txt"),
% which contain 3D coordinate points of circular rings.
% The program performs the following tasks:
% 1. Computes the outer radius (R), inner radius (r), and maximum height difference (h).
% 2. Uses the computed values to visualize the circular ring in 3D.
%
% Data Format:
% - Each row in the data file represents a point in 3D space: (x, y, z)
% ----------------------------------------------------------

%% Process the first ring (data_ring1.txt)
A = load('data_ring1.txt'); % Load data from the first file
num = size(A,1); % Get the number of data points
R = 0; % Initialize the outer radius
r = 1000000; % Initialize the inner radius with a large value
h = 0; % Initialize height difference

% Iterate through all data points to determine R, r, and h
for i = 1:num
    r_temp = A(i,1)^2 + A(i,2)^2; % Compute squared distance from origin (x^2 + y^2)
    
    if r_temp > R
        R = r_temp; % Update outer radius (max distance)
    end
    if r_temp < r
        r = r_temp; % Update inner radius (min distance)
    end
    
    if i <= (num-1)
        % Compute the maximum height difference (h) between consecutive points
        if h < abs(A(i,3) - A(i+1,3))
            h = abs(A(i,3) - A(i+1,3));
        end
    end
end

% Convert squared radii to actual radii
r = sqrt(r);
R = sqrt(R);

% Generate and visualize the ring in 3D
u = (0:pi/8:2*pi)'; % Angle values for plotting
v = (0:pi/32:2*pi)'; 

X3 = [R + r*cos(u), r*sin(u)]; % Compute X3 matrix for visualization
Z = X3(:,2)'; Z = Z(ones(1,length(v)),:);
X = Z; Y = Z;

% Transform X, Y using rotation
for i = 1:length(v)
    X(i,:) = cos(v(i)) * X3(:,1)';
    Y(i,:) = sin(v(i)) * X3(:,1)';
end

figure(1); % Open a new figure
surf(X, Y, Z); % Plot the 3D surface of the ring
axis equal; % Set equal axis scaling
title('3D Visualization of the First Circular Ring');

%% Process the second ring (data_ring2.txt)
A = load('data_ring2.txt'); % Load data from the second file
num = size(A,1);
R = 0;
r = 1000000;
h = 0;

% Iterate through all data points to determine R, r, and h
for i = 1:num
    r_temp = A(i,1)^2 + A(i,2)^2; % Compute squared distance from origin (x^2 + y^2)
    
    if r_temp > R
        R = r_temp; % Update outer radius (max distance)
    end
    if r_temp < r
        r = r_temp; % Update inner radius (min distance)
    end
    
    if i <= (num-1)
        % Compute the maximum height difference (h) between consecutive points
        if h < abs(A(i,3) - A(i+1,3))
            h = abs(A(i,3) - A(i+1,3));
        end
    end
end

% Convert squared radii to actual radii
r = sqrt(r);
R = sqrt(R);

% Generate and visualize the second ring in 3D
u = (0:pi/8:2*pi)'; % Angle values for plotting
v = (0:pi/32:2*pi)'; 

X3 = [R + r*cos(u), r*sin(u)]; % Compute X3 matrix for visualization
Z = X3(:,2)'; Z = Z(ones(1,length(v)),:);
X = Z; Y = Z;

% Transform X, Y using rotation
for i = 1:length(v)
    X(i,:) = cos(v(i)) * X3(:,1)';
    Y(i,:) = sin(v(i)) * X3(:,1)';
end

figure(2); % Open a new figure
surf(X, Y, Z); % Plot the 3D surface of the second ring
axis equal; % Set equal axis scaling
title('3D Visualization of the Second Circular Ring');

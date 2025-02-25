% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************


% Problem Description:
% This simulation models the traffic flow of cars on a single-lane road.
% The goal is to simulate the number of cars passing through a 1000-meter 
% stretch of road in one hour, considering random car arrivals, acceleration, 
% and deceleration rules.
% 
% Key assumptions:
% 1. The car arrival intervals follow an exponential distribution with a mean 
%    of s seconds, where s is a random value between 20 and 50.
% 2. Cars accelerate and decelerate with a random acceleration and deceleration, 
%    which are assumed to be equal in magnitude but opposite in direction.
% 3. The simulation will consider random traffic lights, which stop and start cars.
% 4. The model uses Monte Carlo simulation to generate random parameters and 
%    compute the number of cars passing the 1000m road.

% Step 1: Randomly generate three values for car arrival intervals between 20 and 50 seconds
t = 20 + round(30 * rand(1, 3));  % Generate 3 random values between 20 and 50 seconds

% Step 2: Calculate the initial speed of each car
v = 1000 ./ t;  % The initial speed of the car is calculated as distance/time

% Step 3: Randomly generate acceleration time for each car between 1 and 10 seconds
ta = round(10 * rand(1, 3));  % Acceleration time (random values between 1 and 10 seconds)

% Step 4: Calculate acceleration based on the formula v = a * t
a = v ./ ta;  % Calculate acceleration based on initial speed and acceleration time

% Step 5: Randomly determine the number of stop/start events (traffic lights) for each car (0-3)
stpNum = round(3 * rand(1, 3));  % Randomly choose the number of stop/start events (0-3)

% Step 6: Calculate the average speed of the car during the journey, considering acceleration, 
% deceleration, and constant speed segments. This is based on the formula provided.
% Average speed (v_) = ((2 * stop/start events * acceleration * 1/2) + (constant speed * time)) / total time
v_ = ( (2 .* stpNum .* a .* 1 ./ 2) + (v .* (t - 2 .* stpNum .* ta)) ) ./ t;

% Step 7: Ensure that the average speed is non-negative (absolute value)
v_ = abs(v_);

% Step 8: Calculate the total number of cars that can pass through the road in one hour
Car_Num = round(60 * 60 ./ (1000 ./ v_));  % Total number of cars passing the road in 1 hour

% Display the result: the number of cars passing through the 1000m road in one hour
disp('Number of cars passing through the 1000m road in one hour:');
disp(Car_Num);


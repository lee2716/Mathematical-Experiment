% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
% ----------------------------------------------------------
% Stock Trading Data Visualization
%
% Problem Statement:
% The file "SH600004.mat" contains a matrix M that stores stock trading data. 
% Each row of M corresponds to one day of trading data, with the columns representing:
% 
%   M(i,1) - Date (Integer, e.g., 20210301 means March 1, 2021)
%   M(i,2) - Opening Price (in Yuan)
%   M(i,3) - Highest Price (in Yuan)
%   M(i,4) - Lowest Price (in Yuan)
%   M(i,5) - Closing Price (in Yuan)
%   M(i,6) - Trading Amount (in Yuan)
%   M(i,7) - Trading Volume (in shares)
%
% Tasks:
% (1) Plot the closing price curve and scatter plot for the last 100 trading days.
% (2) Compute and plot the stock price change percentage curve and scatter plot.
% (3) Use a bar chart to visualize the stock price change percentage.
% ----------------------------------------------------------

% Load the stock trading data from the file
load SH600004.mat  

% -------------------------------
% Task 1: Closing Price Plot
% -------------------------------
figure(1); % Create a new figure window
plot(M(1:100,5), 'b-', 'LineWidth', 1.5); % Plot closing price as a line chart
xlabel('Days'); % Label for x-axis
ylabel('Closing Price (Yuan)'); % Label for y-axis
title('Closing Price Over the Last 100 Trading Days'); % Chart title
hold on; % Hold the plot for overlay

scatter(1:100, M(1:100,5), 'r', 'filled'); % Scatter plot of closing prices
legend('Closing Price Curve', 'Closing Price Scatter'); % Add legend
hold off; % Release hold on the current figure

% -------------------------------
% Task 2: Stock Price Change Percentage
% -------------------------------
stock_gain = zeros(1,100); % Initialize stock gain array

for i = 1:100
    % Compute the percentage change in closing price
    stock_gain(i) = (M(i+1,5) - M(i,5)) / M(i,5) * 100; % Convert to percentage
end

% Plot stock price change percentage curve
figure(2);
plot(stock_gain, 'g-', 'LineWidth', 1.5);
xlabel('Days');
ylabel('Stock Price Change (%)');
title('Stock Price Change Over the Last 100 Trading Days');
hold on;

% Scatter plot for stock price change percentage
scatter(1:100, stock_gain, 'b', 'filled');
legend('Stock Price Change Curve', 'Stock Price Change Scatter');
hold off;

% -------------------------------
% Task 3: Stock Price Change Bar Chart
% -------------------------------
figure(3);
bar(stock_gain, 'r'); % Create a bar chart
xlabel('Days');
ylabel('Stock Price Change (%)');
title('Stock Price Change Percentage - Bar Chart');


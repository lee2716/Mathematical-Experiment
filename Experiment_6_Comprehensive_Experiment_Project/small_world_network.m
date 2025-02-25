% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************


% Problem Description:
% This task involves simulating the small-world network model proposed by Watts and Strogatz.
% Small-world networks are a class of complex networks where most nodes are not neighbors,
% but can be reached from every other by a small number of steps. The phenomenon is called 
% "six degrees of separation," where any two people can be connected by a maximum of 6 intermediate 
% acquaintances. This model is used to describe many real-world networks, including social networks, 
% neural networks, and transportation systems.
% 
% The WS small-world network model generation process:
% 1. Consider a 1D ring of N nodes, where each node is connected to its K/2 neighbors (K is even).
% 2. Then, randomly rewire each edge with probability p. When rewiring, one end of the edge stays fixed, 
%    and the other end is connected to a random node.
% 3. The network generated has small-world properties with a short average path length between nodes.

clear all
clc

% Step 1: Define the network parameters
N = 100;     % Number of nodes in the network
K = 4;       % Each node initially connects to K/2 neighbors (K is even)
p = 0.5;     % Probability of rewiring edges

% Step 2: Generate the angle for the nodes in a 1D circular configuration
angle = 0:2*pi/N:2*pi-2*pi/N;   % Angles evenly spaced along the circle

% Step 3: Calculate the x and y coordinates of the nodes on the circle
x = 100 * sin(angle);   % x-coordinates
y = 100 * cos(angle);   % y-coordinates

% Step 4: Plot the initial network configuration (ring of nodes)
plot(x, y, 'ro', 'MarkerEdgeColor', 'g', 'MarkerFaceColor', 'r', 'MarkerSize', 8);
hold on;

% Step 5: Initialize adjacency matrix A for the network (with no connections yet)
A = zeros(N);

% Step 6: Connect each node to its K/2 nearest neighbors (initial 1D ring)
for i = 1:N
    for j = i+1:i+K/2
        jj = j;
        if j > N
            jj = mod(j, N);  % Wrap around to form a circular connection
        end
        A(i, jj) = 1;
        A(jj, i) = 1;  % Bidirectional connection
    end
end

% Step 7: Rewire edges with probability p (randomly disconnect and reconnect edges)
for i = 1:N
    for j = i+1:i+K/2
        jj = j;
        if j > N
            jj = mod(j, N);
        end
        p1 = rand(1, 1);
        if p1 < p  % Rewiring condition
            A(i, jj) = 0;  % Disconnect the edge
            A(jj, i) = 0;
            A(i, i) = inf;  % Avoid self-connection
            a = find(A(i, :) == 0);  % Find available nodes to reconnect
            rand_data = randi([1, length(a)], 1, 1);  % Randomly choose a node
            jjj = a(rand_data);  % New connection node
            A(i, jjj) = 1;
            A(jjj, i) = 1;  % Reconnect the edge
            A(i, i) = 0;  % Remove self-connection
        end
    end
end

% Step 8: Plot the rewired network
for i = 1:N
    for j = i+1:N
        if A(i, j) ~= 0
            plot([x(i), x(j)], [y(i), y(j)], 'linewidth', 1.2);  % Draw edges
            hold on;
        end
    end
end

% Step 9: Set axis to be equal to maintain the shape of the network
axis equal;

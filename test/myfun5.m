function [C,D,E] = myfun

rand('seed',2699)
A = fix(20*rand(8,8));
B = fix(20*rand(8,8));
C = A-B;
D = A*A*B;
E = B'*A;

function myfun7
syms x,y;
z = x.^2-x.*y+y.*cos(x.*y)
a = -5:0.2:5
b = -6:0.2:6
meshgrid(a,b,z)

% function r=myfun7
% x=-5:0.2:5; y=-6:0.2:6;
% [X,Y]=meshgrid(x,y);
% r = X.^2-X.*Y+Y.*cos(X.*Y);
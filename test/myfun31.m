function [s m] = myfun
syms x;
 f=inline(8*sin(x)*cos(x)+30*exp(-9*x));
m=feval(f,0:0.2:50)

s = sum(m)
m = max(abs(m))





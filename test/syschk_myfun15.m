function [x,fval,flag] = myfun
t0_syschk=cputime;

x0=[6;5.5];%迭代 初值
A=[3 6 ;-6 -6 ]; b=[200 ;-30];%左边是
Aeq=[];beq=[];
LB=[0;0];
UB=[21;28];
[x,fval,flag]=fmincon(@fun1,x0,A,b,Aeq,beq,LB,UB,@consfun)
% 2、先建立M-文件 fun1.m:
function f=fun1(x)
t0_syschk=cputime;
f= 8*x(1)^2+3*x(1)+5*x(2)^2+10*x(2)+2*x(1)*x(2);
% 3、编写非线性约束条件函数consfun.m
function [t ceq]=consfun(x)
t0_syschk=cputime;
t= [2*x(1)^2+4*x(2)^2-1000]
ceq = []
x = x'

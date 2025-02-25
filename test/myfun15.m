% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function [x,fval,flag] = myfun

x0=[6;5.5];%���� ��ֵ
A=[3 6 ;-6 -6 ]; b=[200 ;-30];%�����
Aeq=[];beq=[];
LB=[0;0];
UB=[21;28];
[x,fval,flag]=fmincon(@fun1,x0,A,b,Aeq,beq,LB,UB,@consfun)
% 2���Ƚ���M-�ļ� fun1.m:
function f=fun1(x)
f= 8*x(1)^2+3*x(1)+5*x(2)^2+10*x(2)+2*x(1)*x(2);
% 3����д������Լ����������consfun.m
function [t ceq]=consfun(x)
t= [2*x(1)^2+4*x(2)^2-1000]
ceq = []
x = x'
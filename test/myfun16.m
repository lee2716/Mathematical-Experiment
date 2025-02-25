function [B,C] = myfun
A = 1:1:16
A = reshape(A,4,4)
A = A'
B = A.*A
C = A+B
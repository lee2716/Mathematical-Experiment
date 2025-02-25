% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function s = myfun

m=200:800;
m1=rem(m,10);  %���λ��
m2=rem(fix(m/10),10); %��ʮλ��
m3=fix(m/100);   %���λ��
s=find(m==m1.^3+m2.^3+m3.^3)   %find(һά����) �ó�һά�������±����
 s=sum(m(s))

function MA = myfun
rand('seed',1167)
M = fix(17*rand(17,30));
MA = M([3 4 5 6 7 8 9],:)
